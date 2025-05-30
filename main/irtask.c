// IR Task, bit level decode and callback
// #define      IR_GPIO         variable for IR GPIO
// #define      IR_LOG          variable for ir logging
// #define      IR_DEBUG        variable for ir debug logging

enum
{
   IR_UNKNOWN,                  // Unknown coding, so raw data provided
   IR_IDLE,
   IR_ZERO,                     // All zeros
   IR_BPC,                      // Bi-phase coding
   IR_PDC,                      // Pulse Distance coding
   IR_PLC,                      // Pulse length coding
};
#ifdef	IR_LOG
static const char *const ir_coding[] = { "UNKNOWN", "IDLE", "ZERO", "BPC", "PDC", "PLC" };
#endif

typedef void ir_callback_t (uint8_t coding, uint16_t lead0, uint16_t lead1, uint8_t len, uint8_t * data);

static rmt_symbol_word_t ir_rx_symbols[256];
static rmt_rx_done_event_data_t ir_rx_data;

static bool
ir_rx_done_callback (rmt_channel_handle_t channel, const rmt_rx_done_event_data_t * edata, void *user_data)
{
   BaseType_t high_task_wakeup = pdFALSE;
   QueueHandle_t receive_queue = (QueueHandle_t) user_data;
   xQueueSendFromISR (receive_queue, edata, &high_task_wakeup);
   return high_task_wakeup == pdTRUE;
}

void
ir_task (void *arg)
{
   ir_callback_t *cb = arg;
   revk_gpio_input (IR_GPIO);
   rmt_rx_channel_config_t rx_channel_cfg = {
      .clk_src = RMT_CLK_SRC_DEFAULT,
      .resolution_hz = 1000000,
      .mem_block_symbols = sizeof (ir_rx_symbols) / sizeof (*ir_rx_symbols),
      .gpio_num = IR_GPIO.num,
      .flags.invert_in = IR_GPIO.invert,
#ifdef	CONFIG_IDF_TARGET_ESP32S3
      .flags.with_dma = 1,
#endif
   };
   rmt_channel_handle_t rx_channel = NULL;
   REVK_ERR_CHECK (rmt_new_rx_channel (&rx_channel_cfg, &rx_channel));
   if (!rx_channel)
   {
      ESP_LOGE (TAG, "No RMT Rx");
      vTaskDelete (NULL);
      return;
   }
   QueueHandle_t receive_queue = xQueueCreate (1, sizeof (rmt_rx_done_event_data_t));
   if (!receive_queue)
   {
      ESP_LOGE (TAG, "No RMT Queue");
      vTaskDelete (NULL);
      return;
   }
   rmt_rx_event_callbacks_t cbs = {
      .on_recv_done = ir_rx_done_callback,
   };
   REVK_ERR_CHECK (rmt_rx_register_event_callbacks (rx_channel, &cbs, receive_queue));

   rmt_receive_config_t receive_config = {
      .signal_range_min_ns = 2500,
      .signal_range_max_ns = 25000000,
   };

   REVK_ERR_CHECK (rmt_enable (rx_channel));
   REVK_ERR_CHECK (rmt_receive (rx_channel, ir_rx_symbols, sizeof (ir_rx_symbols), &receive_config));

   ESP_LOGE (TAG, "IR started %d", IR_GPIO.num);

   uint8_t idle = 0;
   while (1)
   {
      uint16_t bit = 0,
         lead0 = 0,
         lead1 = 0;
      uint8_t raw[64];
#ifdef	IR_LOG
      jo_t j = NULL;
#endif
      if (xQueueReceive (receive_queue, &ir_rx_data, pdMS_TO_TICKS (50)) == pdPASS)
      {
         idle = 1;
         //ESP_LOGE (TAG, "Symbols %d", ir_rx_data.num_symbols);
         int i = 0;
         if (ir_rx_symbols[i].duration0 > 1500)
         {
            lead0 = ir_rx_symbols[i].duration0;
            lead1 = ir_rx_symbols[i].duration1;
            i++;
         }
#ifdef	IR_LOG
         if (!j && IR_LOG)
         {
            j = jo_object_alloc ();
            if (lead0)
            {
               jo_array (j, "lead");
               jo_int (j, NULL, lead0);
               jo_int (j, NULL, lead1);
               jo_close (j);
            }
#ifdef	IR_DEBUG
            if (IR_DEBUG)
               jo_array (j, "timing");
#endif
         }
#endif
         while (i < ir_rx_data.num_symbols)
         {
#ifdef	IR_LOG
#ifdef	IR_DEBUG
            if (IR_DEBUG)
            {
               jo_int (j, NULL, ir_rx_symbols[i].duration0);
               if (ir_rx_symbols[i].duration1 || i + 1 < ir_rx_data.num_symbols)
                  jo_int (j, NULL, ir_rx_symbols[i].duration1);
            }
#endif
#endif
            raw[bit / 8] = (raw[bit / 8] << 1) | (ir_rx_symbols[i].duration0 >= 800 ? 1 : 0);
            bit++;
            if (ir_rx_symbols[i].duration1 || i + 1 < ir_rx_data.num_symbols)
            {
               raw[bit / 8] = (raw[bit / 8] << 1) | (ir_rx_symbols[i].duration1 >= 800 ? 1 : 0);
               bit++;
            }
            i++;
         }
         // Next
         REVK_ERR_CHECK (rmt_receive (rx_channel, ir_rx_symbols, sizeof (ir_rx_symbols), &receive_config));
         if (bit)
         {
#ifdef	IR_LOG
#ifdef	IR_DEBUG
            if (IR_DEBUG)
               jo_close (j);
#endif
#endif
            if (bit & 7)
               raw[bit / 8] <<= (8 - (bit & 7));
            uint8_t byte = (bit + 7) / 8;
            // Work out coding
            uint8_t coding = 0;
            uint8_t b;
            if (!coding)
            {
               for (b = 0; b < byte && !raw[b]; b++);
               if (b == byte)
                  coding = IR_ZERO;
            }
            if (!coding)
            {
               for (b = 0; b < byte && !(raw[b] & 0xAA); b++);
               if (b == byte)
               {                // all 0 are short, so data in 1
                  coding = IR_PDC;
                  b = 0;
                  while (b < bit / 2)
                  {
                     if (raw[b / 4] & 0x40 >> ((b & 3) * 2))
                        raw[b / 8] |= (0x80 >> (b & 7));
                     else
                        raw[b / 8] &= ~(0x80 >> (b & 7));
                     b++;
                  }
                  bit = b;
               }
            }
            if (!coding)
            {
               for (b = 0; b < byte && !(raw[b] & 0x55); b++);
               if (b == byte)
               {                // all 1 are short so data in 0
                  coding = IR_PLC;
                  b = 0;
                  while (b < bit / 2)
                  {
                     if (raw[b / 4] & 0x80 >> ((b & 3) * 2))
                        raw[b / 8] |= (0x80 >> (b & 7));
                     else
                        raw[b / 8] &= ~(0x80 >> (b & 7));
                     b++;
                  }
                  bit = b;
               }
            }
            if (!coding)
            {
               for (b = 0; b < bit / 8 && !((raw[b] ^ (raw[b] << 1)) & 0xAA); b++);
               if (b && b == bit / 8)
               {                // biphase coding (we don't check last byte)
                  coding = IR_BPC;
                  b = 0;
                  while (b < bit / 2)
                  {
                     if (raw[b / 4] & 0x40 >> ((b & 3) * 2))
                        raw[b / 8] |= (0x80 >> (b & 7));
                     else
                        raw[b / 8] &= ~(0x80 >> (b & 7));
                     b++;
                  }
                  bit = b;
               }
            }
            if (bit & 7)
               raw[bit / 8] <<= (8 - (bit & 7));
            byte = (bit + 7) / 8;
            if (cb)
               cb (coding, lead0, lead1, bit, raw);
#ifdef	IR_LOG
            if (IR_LOG && j)
            {
               jo_string (j, "coding", ir_coding[coding]);
               jo_array (j, "data");
               for (int i = 0; i < byte; i++)
                  jo_stringf (j, NULL, "%02X", raw[i]);
               jo_close (j);
               jo_int (j, "bits", bit);
               revk_info ("ir", &j);
            }
#endif
         }
#ifdef	IR_LOG
         if (j)
            jo_free (&j);
#endif
      } else
      {
         if (idle && idle++ == 3)
         {
            //ESP_LOGE (TAG, "IR idle");
            idle = 0;
            if (cb)
               cb (IR_IDLE, 0, 0, 0, NULL);
         }
      }
   }
   vTaskDelete (NULL);
}
