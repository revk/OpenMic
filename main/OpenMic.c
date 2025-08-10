/* OpenMic app */
/* Copyright ©2024 Adrian Kennard, Andrews & Arnold Ltd.See LICENCE file for details .GPL 3.0 */

static const char TAG[] = "OpenMic";

#include "revk.h"
#include "esp_sleep.h"
#include "esp_task_wdt.h"
#include <netdb.h>
#include <driver/gpio.h>
#include <driver/uart.h>
#include <driver/i2c.h>
#include <driver/i2s_std.h>
#include <driver/i2s_pdm.h>
#include <driver/rtc_io.h>
#include <driver/sdmmc_host.h>
#include "hal/adc_types.h"
#include "esp_adc/adc_oneshot.h"
#include "esp_adc/adc_cali.h"
#include "esp_adc/adc_cali_scheme.h"
#include "esp_http_client.h"
#include <esp_http_server.h>
#include "esp_crt_bundle.h"
#include "tinyusb.h"
#include "tusb_msc_storage.h"
#include "fft.h"
#include "math.h"
#include "esp_vfs_fat.h"
#include <sys/dirent.h>
#include <sip.h>
#include <halib.h>
#include <ir.h>

float voltage = NAN;
#define ADC_SCALE       (3)     // Resistor ratio
#define ADC_ATTEN       ADC_ATTEN_DB_6
#define	BAT_EMPTY	3100    // mV
#define	BAT_FULL	4100    // mV

typedef int16_t audio_t;
#define	audio_max	32767

struct
{
   char c;
   const char *m;
} morse[] = {
   {'A', ".-"},
   {'B', "-..."},
   {'C', "-.-."},
   {'D', "-.."},
   {'E', "."},
   {'F', "..-."},
   {'G', "--."},
   {'H', "...."},
   {'I', ".."},
   {'J', ".---"},
   {'K', "-.-"},
   {'L', ".-.."},
   {'M', "--"},
   {'N', "-."},
   {'O', "---"},
   {'P', ".--."},
   {'Q', "--.-"},
   {'R', ".-."},
   {'S', "..."},
   {'T', "-"},
   {'U', "..-"},
   {'V', "...-"},
   {'W', ".--"},
   {'X', "-..-"},
   {'Y', "-.--"},
   {'Z', "--.-"},
   {'1', ".----"},
   {'2', "..---"},
   {'3', "...--"},
   {'4', "....-"},
   {'5', "....."},
   {'6', "-...."},
   {'7', "--..."},
   {'8', "---.."},
   {'9', "----."},
   {'0', "-----"},
   {'.', ".-.-.-"},
   {',', "--..--"},
   {'?', "..--.."},
   {'\'', ".---."},
   {'/', "-..-."},
   {'(', "-.--."},
   {')', "-.--.-"},
   {'&', ".-..."},
   {':', "---..."},
   {';', "-.-.-."},
   {'=', "-...-"},
   {'+', ".-.-."},
   {'-', "-....-"},
   {'+', "..--.-"},
   {'"', ".-..-."},
   {'$', "...-..-"},
   {'@', ".--.-."},
};

void sip_callback (sip_state_t state, uint8_t len, const uint8_t * data);
void sip_debug (uint8_t rx, struct sockaddr_storage *addr, const char *message);

// TODO international characters

char *morsemessage = NULL;      // Malloc'd
char *tones = NULL;             // Malloc'd

typedef enum
{
   MIC_IDLE,
   MIC_TEST,
   MIC_SIP,
   MIC_RECORD,
} mic_mode_t;
mic_mode_t mic_mode = MIC_TEST;

typedef enum
{
   SPK_IDLE,
   SPK_SIP,
   SPK_TONE,
   SPK_WAV,
} spk_mode_t;
spk_mode_t spk_mode = 0;

sip_state_t sip_mode = 0;

sdmmc_card_t *card = NULL;

led_strip_handle_t led_status = NULL;

struct
{
   uint8_t die:1;               // Shutting down
   uint8_t status:1;            // Send status
   uint8_t sdpresent:1;         // SD present
   uint8_t doformat:1;          // SD format
   uint8_t dodismount:1;        // Dismount SD
   uint8_t micokl:1;            // Mic L is OK
   uint8_t micokr:1;            // Mic R is OK
   uint8_t micon:1;             // Sounds required
   uint8_t miconha:1;           // Sounds required (started by HA so keep WiFi on)
   uint8_t sharedi2s:1;         // I2S shared for Mic and Spk
   uint8_t ha:1;                // Send HA config
   uint8_t overrun:1;           // Record overrun
   uint8_t vbus:1;              // VBUS connected
   uint8_t charging:1;          // Is charging
   uint8_t batfull:1;           // Battery full
} b = { 0 };

const char sd_mount[] = "/sd";
char sdrgb = 0;                 // Colour for SD card
const char *cardstatus = NULL;  // Status of SD card
uint64_t sdsize = 0,            // SD card data
   sdfree = 0;
FILE *volatile sdfile = NULL;

i2s_chan_handle_t mic_handle = { 0 };

#define	MICMS		100
#if defined(CONFIG_ESP32_SPIRAM_SUPPORT) || defined(CONFIG_ESP32S3_SPIRAM_SUPPORT)
#define	MICQUEUE	32
#else
#define	MICQUEUE	4
#endif
uint8_t micchannels = 0;        // Channels (1 or 2)
uint8_t micbytes = 0;           // Bytes per channel (2, 3, or 4)
uint32_t micsamples = 0;        // Samples per collection
uint32_t micfreq = 0;           // Actual sample rate
uint8_t *micaudio[MICQUEUE] = { 0 };

#define	SPKMS		100
i2s_chan_handle_t spk_handle = { 0 };

uint8_t spkchannels = 0;        // Channels (1 or 2)
uint8_t spkbytes = 0;           // Bytes per channel (2, 3, or 4)
uint32_t spksamples = 0;        // Samples per collection
uint32_t spkfreq = 0;           // Actual sample rate

volatile uint8_t sdin = 0,
   sdout = 0;
volatile uint32_t idle = 0;

static httpd_handle_t webserver = NULL;

const char *
app_callback (int client, const char *prefix, const char *target, const char *suffix, jo_t j)
{
   if (client || !prefix || target || strcmp (prefix, topiccommand) || !suffix)
      return NULL;              // Not for us or not a command from main MQTTS
   if (!strcasecmp (suffix, "morse"))
   {
      if (morsemessage)
         return "Wait";
      if (jo_here (j) != JO_STRING)
         return "JSON string";
      // TODO allow object with custom WPM, and so on
      morsemessage = jo_strdup (j);
      return NULL;
   }
   if (!strcasecmp (suffix, "dtmf") || !strcasecmp (suffix, "tone"))
   {
      if (tones)
         return "Wait";
      if (jo_here (j) != JO_STRING)
         return "JSON string";
      // TODO allow object with custom timings, and so on
      tones = jo_strdup (j);
      return NULL;
   }
   if (!strcasecmp (suffix, "format"))
   {
      b.doformat = 1;
      return NULL;
   }
   if (suffix && ((haenable && (!strcmp (suffix, "connect") || !strcmp (suffix, "status"))) || !strcmp (suffix, "setting")))
   {
      b.ha = 1;
      return NULL;
   }
   if (!strcasecmp (suffix, "record"))
   {
      if (b.sdpresent && !jo_strcmp (j, "ON"))
      {
         b.miconha = 1;
         b.micon = 1;
         b.status = 1;
      } else
      {
         b.miconha = 0;
         b.micon = 0;
         b.status = 1;
      }
      return NULL;
   }
   if (!strcasecmp (suffix, "restart"))
   {
      sip_dereg ();
      return NULL;
   }
   return NULL;
}

void
send_ha_config (void)
{
   b.ha = 0;
 ha_config_switch ("record", name: "Record", cmd: "/record", stat: "", field: "record", icon: "mdi:microphone", delete:!haenable);
}

void
revk_state_extra (jo_t j)
{
   if (vbus.set)
      jo_bool (j, "power", b.vbus);
   if (chg.set)
   {
      jo_bool (j, "charging", b.charging);
      jo_bool (j, "charged", b.batfull);
   }
   if (sdcmd.set)
      jo_bool (j, "sdcard", b.sdpresent);
   if (micws.set)
      jo_string (j, "record", b.micon ? "ON" : "OFF");
   if (isfinite (voltage))
      jo_litf (j, "V", "%.3f", voltage / 1000);
}

void
revk_web_extra (httpd_req_t * req, int page)
{
   if (micws.set)
   {
      revk_web_setting (req, NULL, "micgain");
      revk_web_setting (req, NULL, "micstereo");
      if (!micstereo)
         revk_web_setting (req, NULL, "micright");
   }
   if (sdcmd.set)
   {
      if (micws.set && rgbled.set)
         revk_web_setting (req, NULL, "micbeep");
      revk_web_setting (req, NULL, "sdsynctime");
      revk_web_setting (req, NULL, "sdrectime");
      revk_web_setting (req, NULL, "sddelete");
      revk_web_setting (req, NULL, "sdupload");
      revk_web_setting (req, NULL, "sdusb");
      revk_web_setting (req, NULL, "haenable");
      revk_web_setting (req, NULL, "wifilock");
      revk_web_setting (req, NULL, "wifirecord");
   }
   if (vbus.set)
   {
      revk_web_setting (req, NULL, "wifiusb");
      if (autooff)
         revk_web_setting (req, NULL, "autousb");
   }
   revk_web_setting (req, NULL, "autooff");
   if (micws.set || spklrc.set)
   {
      revk_web_setting (req, NULL, "siphost");
      revk_web_setting (req, NULL, "sipuser");
      revk_web_setting (req, NULL, "sippass");
      revk_web_setting (req, NULL, "sipoutgoing");
   }
   if (spklrc.set)
   {
      revk_web_setting (req, NULL, "morsestart");
   }
}

static void
register_uri (const httpd_uri_t * uri_struct)
{
   esp_err_t res = httpd_register_uri_handler (webserver, uri_struct);
   if (res != ESP_OK)
   {
      ESP_LOGE (TAG, "Failed to register %s, error code %d", uri_struct->uri, res);
   }
}

static void
register_post_uri (const char *uri, esp_err_t (*handler) (httpd_req_t * r))
{
   httpd_uri_t uri_struct = {
      .uri = uri,
      .method = HTTP_POST,
      .handler = handler,
   };
   register_uri (&uri_struct);
}

static void
register_get_uri (const char *uri, esp_err_t (*handler) (httpd_req_t * r))
{
   httpd_uri_t uri_struct = {
      .uri = uri,
      .method = HTTP_GET,
      .handler = handler,
   };
   register_uri (&uri_struct);
}

static esp_err_t
web_root (httpd_req_t * req)
{
   idle = 0;
   if (revk_link_down ())
      return revk_web_settings (req);   // Direct to web set up
   revk_web_head (req, "OpenMic");
   revk_web_send (req, "<h1>%s</h1>", *hostname ? hostname : appname);
   const char *er = NULL;
   jo_t j = revk_web_query (req);
   if (j)
   {
      if (jo_find (j, "tone") || jo_find (j, "dtmf") || jo_find (j, "oa"))
      {
         if (tones)
            er = "Wait until finished";
         else
            tones = jo_strdup (j);
      }
      if (jo_find (j, "morse") || jo_find (j, "ud"))
      {
         if (morsemessage)
            er = "Wait until finished";
         else
            morsemessage = jo_strdup (j);
      }
      jo_free (&j);
   }
   if (spklrc.set)
      revk_web_send (req,
                     "<form method=post><table><tr><td>Morse</td><td><input autofocus name=morse size=80></td></tr><tr><td>DTMF</td><td><input name=tone></td></tr></table><input type=submit value=Send></form>");
   if (er)
      revk_web_send (req, "<p>%s</p>", er);
   if (wifilock && b.sdpresent)
      revk_web_send (req, "<hr><p>For security reasons, settings are disabled whilst the SD card is inserted</p>");
   if (b.overrun)
      revk_web_send (req, "<p>Recording overrun - use faster SD card</p>");
   return revk_web_foot (req, 0, 1, NULL);
}

SemaphoreHandle_t sd_mutex = NULL;

void
usb_on (void)
{                               // Enable USB Mass Storage
   if (!sdusb)
      return;
   tinyusb_config_t init = {
      .device_descriptor = NULL,        // Use the default device descriptor specified in Menuconfig
      .string_descriptor = NULL,        // Use the default string descriptors specified in Menuconfig
      .external_phy = false,    // Use internal USB PHY
#if (TUD_OPT_HIGH_SPEED)
      .fs_configuration_descriptor = NULL,      // Use the default full-speed configuration descriptor according to settings in Menuconfig
      .hs_configuration_descriptor = NULL,      // Use the default high-speed configuration descriptor according to settings in Menuconfig
      .qualifier_descriptor = NULL,     // Use the default qualifier descriptor, with values from default device descriptor
#else
      .configuration_descriptor = NULL, // Use the default configuration descriptor according to settings in Menuconfig
#endif // TUD_OPT_HIGH_SPEED
   };
   if (vbus.set)
   {
      init.self_powered = true;
      init.vbus_monitor_io = vbus.num;
   }
   tinyusb_driver_install (&init);
   const tinyusb_msc_sdmmc_config_t config_sdmmc = {
      .card = card
   };
   tinyusb_msc_storage_init_sdmmc (&config_sdmmc);
}

void
usb_off (void)
{                               // Disable USB Mass Storage
   if (!sdusb)
      return;
   tinyusb_msc_storage_deinit ();
   tinyusb_driver_uninstall ();
}

void
sd_task (void *arg)
{
   esp_err_t e = 0;
   revk_gpio_input (sdcd);
   sdmmc_slot_config_t slot = SDMMC_SLOT_CONFIG_DEFAULT ();
   slot.clk = sdclk.num;
   slot.cmd = sdcmd.num;
   slot.d0 = sddat0.num;
   slot.d1 = sddat1.set ? sddat1.num : -1;
   slot.d2 = sddat2.set ? sddat2.num : -1;
   slot.d3 = sddat3.set ? sddat3.num : -1;
   //slot.cd = sdcd.set ? sdcd.num : -1; // We do CD, and not sure how we would tell it polarity
   slot.width = (sddat2.set && sddat3.set ? 4 : sddat1.set ? 2 : 1);
   if (slot.width == 1)
      slot.flags |= SDMMC_SLOT_FLAG_INTERNAL_PULLUP;    // Old boards?
   //if (slot.width == 4) slot.flags |= SDMMC_SLOT_FLAG_UHS1;
   sdmmc_host_t host = SDMMC_HOST_DEFAULT ();
   host.max_freq_khz = SDMMC_FREQ_HIGHSPEED;
   host.slot = SDMMC_HOST_SLOT_1;
   esp_vfs_fat_sdmmc_mount_config_t mount_config = {
      .format_if_mount_failed = 1,
      .max_files = 2,
      .allocation_unit_size = 16 * 1024,
      .disk_status_check_enable = 1,
   };
   while (!b.die)
   {
      if (sdcd.set)
      {
         if (b.dodismount)
         {                      // Waiting card removed
            sdrgb = 'B';
            jo_t j = jo_object_alloc ();
            jo_string (j, "action", cardstatus = revk_shutting_down (NULL) ? "Card dismounted for shutdown" : "Remove card");
            revk_info ("SD", &j);
            b.dodismount = 0;
            while ((b.sdpresent = revk_gpio_get (sdcd)))
               sleep (1);
            continue;
         }
         if (!(b.sdpresent = revk_gpio_get (sdcd)))
         {                      // No card
            jo_t j = jo_object_alloc ();
            jo_string (j, "error", cardstatus = "Card not present");
            revk_info ("SD", &j);
            sdrgb = 'M';
            if (wifilock)
            {
               revk_enable_ap ();
               revk_enable_settings ();
            }
            while (!(b.sdpresent = revk_gpio_get (sdcd)))
               sleep (1);
         }
         if (wifilock)
         {
            revk_disable_ap ();
            revk_disable_settings ();
         }
         b.sdpresent = 1;
      } else if (b.dodismount)
      {
         b.dodismount = 0;
         sleep (60);
         continue;
      }
      sleep (1);
      ESP_LOGD (TAG, "Mounting SD card");
      e = esp_vfs_fat_sdmmc_mount (sd_mount, &host, &slot, &mount_config, &card);
      if (e != ESP_OK)
      {
         ESP_LOGE (TAG, "SD Mount failed");
         jo_t j = jo_object_alloc ();
         if (e == ESP_FAIL)
            jo_string (j, "error", cardstatus = "Failed to mount");
         else
            jo_string (j, "error", cardstatus = "Failed to iniitialise");
         jo_int (j, "code", e);
         revk_error ("SD", &j);
         sdrgb = 'R';
         sleep (1);
         continue;
      }
      ESP_LOGE (TAG, "SD Card mounted");
      b.sdpresent = 1;          // we mounted, so must be
      sdrgb = 'G';              // Writing to card (typically gets overridden)
      if (b.doformat)
      {
         if ((e = esp_vfs_fat_sdcard_format (sd_mount, card)))
         {
            ESP_LOGE (TAG, "SD format failed");
            jo_t j = jo_object_alloc ();
            jo_string (j, "error", cardstatus = "Failed to format");
            jo_int (j, "code", e);
            revk_error ("SD", &j);
         } else
            ESP_LOGE (TAG, "SD formatted");
      }
      sdrgb = 'R';              // Oddly this call can hang forever!
      {
         esp_vfs_fat_info (sd_mount, &sdsize, &sdfree);
         jo_t j = jo_object_alloc ();
         jo_string (j, "action", cardstatus = (b.doformat ? "Formatted" : "Mounted"));
         jo_int (j, "size", sdsize);
         jo_int (j, "free", sdfree);
         revk_info ("SD", &j);
      }
      sdrgb = 'Y';              // ready
      usb_on ();
      b.doformat = 0;
      uint32_t writebytes = 0;  // Bytes of actual data written
      uint32_t filesize = 0;    // End of file writebytes
      uint32_t filesync = 0;    // Sync next writebytes
      uint64_t writetime = 0;   // Total us writing
      char *filename = NULL;
      while (!b.doformat && !b.dodismount && !b.die)
      {
         while (!b.doformat && !b.dodismount)
         {
            sdrgb = (sdfile ? 'G' : 'Y');
            if (!(b.sdpresent = revk_gpio_get (sdcd)))
            {                   // card removed
               b.dodismount = 1;
               break;
            }
            if (mic_mode == MIC_RECORD && !sdfile)
            {                   // Start file
               usb_off ();
               filesize = sdrectime * micfreq * micchannels * micbytes;
               filesync = sdsynctime * micfreq * micchannels * micbytes;
               int fileno = 0;
               char *oldest = NULL;
               DIR *dir = opendir (sd_mount);
               if (dir)
               {
                  struct dirent *entry;
                  while ((entry = readdir (dir)))
                     if (entry->d_type == DT_REG)
                     {
                        if (!isdigit ((int) *(unsigned char *) (entry->d_name)))
                           continue;
                        const char *e = strrchr (entry->d_name, '.');
                        if (!e || (strcasecmp (e, ".wav") && !strcasecmp (e, ".bad")))
                           continue;
                        int n = atoi (entry->d_name);
                        if (n > fileno)
                           fileno = n;
                        if (!oldest || atoi (entry->d_name) < atoi (oldest))
                        {
                           free (oldest);
                           oldest = strdup (entry->d_name);
                        }
                     }
                  if (sddelete && oldest)
                  {             // Do we need to delete oldest
                     esp_vfs_fat_info (sd_mount, &sdsize, &sdfree);
                     if (sdfree < filesize + 44 + 4096)
                     {
                        asprintf (&filename, "%s/%s", sd_mount, oldest);
                        ESP_LOGE (TAG, "Purge %s", filename);
                        unlink (filename);
                        free (oldest);
                        free (filename);
                        filename = NULL;
                     }
                  }
                  closedir (dir);
               }
               fileno++;
               time_t now = time (0);
               struct tm t;
               localtime_r (&now, &t);
               if (t.tm_year >= 100)
                  asprintf (&filename, "%s/%04d-%04d%02d%02dT%02d%02d%02d.WAV", sd_mount, fileno, t.tm_year + 1900, t.tm_mon + 1,
                            t.tm_mday, t.tm_hour, t.tm_min, t.tm_sec);
               else
                  asprintf (&filename, "%s/%04d-.WAV", sd_mount, fileno);
               FILE *o = fopen (filename, "w+");
               if (!o)
                  ESP_LOGE (TAG, "Failed to open file %s", filename);
               else
               {
                  ESP_LOGE (TAG, "Recording opened %s sync %lu max %lu", filename, filesync, filesize);
                  struct
                  {
                     char filetypeblocid[4];
                     uint32_t filesize;
                     char fileformatid[4];
                     char formatblocid[4];
                     uint32_t blocsize;
                     uint16_t audioformat;
                     uint16_t nbrchannels;
                     uint32_t frequency;
                     uint32_t bytepersec;
                     uint16_t byteperbloc;
                     uint16_t bitspersample;
                     char datablocid[4];
                     uint32_t datasize;
                  } riff = {
                     "RIFF",    // Master
                     36,        // Length zero
                     "WAVE",
                     "fmt ",    // Chunk
                     16,
                     1,         // PCM
                     micchannels,
                     micfreq,
                     micfreq * micchannels * micbytes,
                     micchannels * micbytes,
                     micbytes * 8,      // bits
                     "data",    // Data block
                     0,         // Length zero
                  };
                  fwrite (&riff, sizeof (riff), 1, o);
                  sdfile = o;
                  writetime = 0;
                  writebytes = 0;
               }
            }
            if (sdfile && (mic_mode != MIC_RECORD || writebytes >= filesize || writebytes >= filesync))
            {                   // End file
               // Rewind and set size
               fclose (sdfile);
               sdfile = fopen (filename, "r+");
               if (!sdfile)
                  ESP_LOGE (TAG, "Error %s", filename);
               else
               {
                  uint32_t len = writebytes;    // Data len
                  fseek (sdfile, 40, SEEK_SET);
                  fwrite (&len, 4, 1, sdfile);
                  len += 36;
                  fseek (sdfile, 4, SEEK_SET);
                  fwrite (&len, 4, 1, sdfile);
                  if (mic_mode == MIC_RECORD && writebytes < filesize)
                  {             // Just a sync
                     fseek (sdfile, 0, SEEK_END);
                     ESP_LOGE (TAG, "Sync %s at %lu", filename, writebytes);
                     filesync += sdsynctime * micfreq * micchannels * micbytes;
                  } else
                  {             // File close
                     ESP_LOGE (TAG, "Recording closed %s at %lu", filename, writebytes);
                     fclose (sdfile);
                     sdfile = NULL;
                     if (writetime)
                     {
                        ESP_LOGE (TAG, "SD access %dbit: %lu bytes %llums (%llukB/sec) %s", slot.width, writebytes,
                                  writetime / 1000ULL, writebytes * 1000ULL / writetime, filename);
                        jo_t j = jo_object_alloc ();
                        jo_string (j, "action", "Written");
                        jo_string (j, "filename", filename);
                        jo_int (j, "bytes", writebytes);
                        jo_int (j, "ms", writetime / 1000ULL);
                        if (b.overrun)
                           jo_bool (j, "overrun", 1);
                        revk_info ("SD", &j);
                     }
                     if (b.overrun)
                     {          // Name
                        char *new = strdup (filename);
                        char *dot = strstr (new, ".WAV");
                        if (dot)
                        {
                           strcpy (dot, ".BAD");
                           rename (filename, new);
                        }
                        free (new);
                     }
                     free (filename);
                     filename = NULL;
                  }
               }
               if (!sdfile)
                  usb_on ();
            }
            if (sdfile && sdin != sdout)
            {
               while (sdin != sdout)
               {
                  uint64_t a = esp_timer_get_time ();
                  fwrite (micaudio[sdout], micsamples * micchannels * micbytes, 1, sdfile);
                  writetime += esp_timer_get_time () - a;
                  writebytes += micsamples * micchannels * micbytes;
                  sdout = (sdout + 1) % MICQUEUE;
               }
            }
            usleep (10000);
         }
         free (filename);
         filename = NULL;
         sdrgb = 'B';
         if (b.dodismount)
         {
            esp_vfs_fat_sdcard_unmount (sd_mount, card);
            ESP_LOGE (TAG, "SD Card dismounted");
            {
               jo_t j = jo_object_alloc ();
               jo_string (j, "action", cardstatus = "Dismounted");
               revk_info ("SD", &j);
            }
         }
      }
   }
   usb_off ();
   vTaskDelete (NULL);
}

static void
ir_callback (uint8_t coding, uint16_t lead0, uint16_t lead1, uint8_t len, uint8_t * data)
{                               // Handle generic IR https://www.amazon.co.uk/dp/B07DJ58XGC
   //ESP_LOGE (TAG, "IR CB %d %d %d %d", coding, lead0, lead1, len);
   static uint8_t key = 0;
   static uint8_t count = 0;
   if (coding == IR_PDC && len == 32 && lead0 > 8500 && lead0 < 9500 && lead1 > 4000 && lead1 < 5000 && (data[0] ^ data[1]) == 0xFF
       && (data[2] ^ data[3]) == 0xFF && !data[0])
   {                            // Key
      key = data[2];
      //ESP_LOGE (TAG, "Key %02X", key);
      count = 0;
   }
   if (coding == IR_ZERO && len == 1 && lead0 > 8500 && lead0 < 9500 && lead1 > 1500 && lead1 < 2500 && key)
   {                            // Continue - ignore for now
      if (count < 255)
         count++;
      if (count == 5)
      {                         // hold
         jo_t j = jo_create_alloc ();
         jo_stringf (j, NULL, "%02X", key);
         revk_info ("irhold", &j);
      }
   }
   if (coding == IR_IDLE)
   {
      jo_t j = jo_create_alloc ();
      jo_stringf (j, NULL, "%02X", key);
      if (count < 5)
         revk_info ("irpress", &j);
      else
         revk_info ("irrelease", &j);
      key = 0;
   }
}

long long uploaded = 0,
   uploadtotal = 0;

void
do_upload (void)
{
   DIR *dir = opendir (sd_mount);
   struct dirent *entry;
   char *filename = NULL;
   struct stat s = { 0 };
   int files = 0;
   if (!dir)
      return;
   uploadtotal = 0;
   while ((entry = readdir (dir)))
      if (entry->d_type == DT_REG)
      {
         if (!isdigit ((int) *(unsigned char *) (entry->d_name)))
            continue;
         const char *e = strrchr (entry->d_name, '.');
         if (!e || strcasecmp (e, ".wav"))
            continue;
         for (e = entry->d_name; *e && isdigit ((int) *(unsigned char *) e); e++);
         if (*e != '-')
            continue;
         asprintf (&filename, "%s/%s", sd_mount, entry->d_name);
         if (!stat (filename, &s) && s.st_size)
         {
            uploadtotal += s.st_size;
            files++;
         }
         free (filename);
      }
   closedir (dir);
   ESP_LOGE (TAG, "Upload %d file%s, %lld bytes", files, files == 1 ? "" : "s", uploadtotal);

   while (1)
   {
      dir = opendir (sd_mount);
      if (!dir)
         break;
      char *oldest = NULL;
      while ((entry = readdir (dir)))
         if (entry->d_type == DT_REG)
         {
            if (!isdigit ((int) *(unsigned char *) (entry->d_name)))
               continue;
            const char *e = strrchr (entry->d_name, '.');
            if (!e || strcasecmp (e, ".wav"))
               continue;
            for (e = entry->d_name; *e && isdigit ((int) *(unsigned char *) e); e++);
            if (*e != '-')
               continue;
            if (!oldest || atoi (entry->d_name) < atoi (oldest))
            {
               free (oldest);
               oldest = strdup (entry->d_name);
            }
         }
      if (oldest)
      {
         asprintf (&filename, "%s/%s", sd_mount, oldest);
         free (oldest);
      }
      closedir (dir);
      if (!oldest)
         break;
      if (stat (filename, &s))
      {
         free (filename);
         break;
      }
      if (!s.st_size)
      {
         ESP_LOGE (TAG, "Empty file %s", filename);
         unlink (filename);
         free (filename);
         continue;
      }
      int response = 0;
      FILE *i = fopen (filename, "r");
      if (!i)
      {
         ESP_LOGE (TAG, "Cannot open %s", filename);
         free (filename);
         break;
      }
      ESP_LOGE (TAG, "Upload %s, %lu bytes", filename, s.st_size);
      char *u;
      asprintf (&u, "%s?%s-%s", sdupload, hostname, filename + sizeof (sd_mount));
      for (char *p = u + strlen (sdupload) + 1; *p; p++)
         if (!is_alnum (*p) && *p != '.')
            *p = '-';
      esp_http_client_config_t config = {
         .url = u,
         .crt_bundle_attach = esp_crt_bundle_attach,
         .method = HTTP_METHOD_POST,
      };
#define	BLOCK	2048
      uint8_t lastpercent = 255;
      char *buf = mallocspi (BLOCK);
      if (buf)
      {
         esp_http_client_handle_t client = esp_http_client_init (&config);
         if (client)
         {
            esp_http_client_set_header (client, "Content-Type", "audio/wav");
            if (!esp_http_client_open (client, s.st_size))
            {
               int len;
               uint32_t total = 0;
               uint64_t t = 0;
               while (1)
               {
                  uint64_t a = esp_timer_get_time ();
                  len = fread (buf, 1, BLOCK, i);
                  t += esp_timer_get_time () - a;
                  if (len <= 0)
                     break;
                  total += len;
                  uploaded += len;
                  esp_http_client_write (client, buf, len);
                  uint8_t percent = uploaded * 100 / uploadtotal;
                  if (percent != lastpercent)
                  {
                     lastpercent = percent;
                     ESP_LOGE (TAG, "Upload %d%%", percent);
                     int l = (int) (100 - percent) * rgbleds * 256 / 100;
                     if (l < 64)
                        l = 64;
                     for (int i = 0; i < rgbleds; i++)
                     {
                        revk_led (led_status, i, l < 256 ? l : 255, revk_rgb (i & 1 ? 'O' : 'B'));
                        if (l < 256)
                           l = 0;
                        else
                           l -= 256;
                     }
                     REVK_ERR_CHECK (led_strip_refresh (led_status));
                  }
               }
               esp_http_client_fetch_headers (client);
               esp_http_client_flush_response (client, &len);
               response = esp_http_client_get_status_code (client);
               esp_http_client_close (client);
               if (t)
                  ESP_LOGE (TAG, "Sent %lu bytes, SD access: %llums (%llukB/sec) %s", total, t / 1000ULL,
                            total * 1000ULL / t, filename);
            }
            esp_http_client_cleanup (client);
         }
      }
      free (u);
      free (buf);
#undef	BLOCK
      if (response / 100 == 2)
      {
         char *new = strdup (filename);
         for (char *e = new; *e; e++)
            if (*e == '-')
            {
               *e = '_';
               break;
            }
         if (rename (filename, new))
         {
            free (filename);
            free (new);
            break;
         }
         ESP_LOGI (TAG, "Rename %s %s", filename, new);
         free (new);
      }
      fclose (i);
      free (filename);
      if (response / 100 != 2)
         break;
   }
   esp_vfs_fat_sdcard_unmount (sd_mount, card);
}

void
mic_task (void *arg)
{
   led_strip_handle_t led_mic = NULL;
   if (rgbled.set)
   {
      led_strip_config_t strip_config = {
         .strip_gpio_num = rgbled.num,
         .max_leds = 2,
         .color_component_format = LED_STRIP_COLOR_COMPONENT_FMT_GRB,
         .led_model = LED_MODEL_WS2812, // LED strip model
         .flags.invert_out = rgbled.invert,
      };
      led_strip_rmt_config_t rmt_config = {
         .clk_src = RMT_CLK_SRC_DEFAULT,        // different clock source can lead to different power consumption
         .resolution_hz = 10 * 1000 * 1000,     // 10 MHz
      };
      REVK_ERR_CHECK (led_strip_new_rmt_device (&strip_config, &rmt_config, &led_mic));
   }
   void led (char c, uint8_t beep)
   {
      if (beep)
         c = 'R';
      static uint8_t tick = 0;
      if (++tick == 10)
         tick = 0;
      if (led_mic)
      {
         revk_led (led_mic, 0, 255, !b.micokl ? revk_rgb ('R') : micchannels == 0 || micchannels == 2
                   || !micright ? revk_rgb (c) : 0);
         revk_led (led_mic, 1, 255, !b.micokr ? revk_rgb ('R') : micchannels == 0 || micchannels == 2
                   || micright ? revk_rgb (c) : 0);
         REVK_ERR_CHECK (led_strip_refresh (led_mic));
      }
      if (led_status)
      {
         if (beep)
         {
            for (int i = 0; i < rgbleds; i++)
               revk_led (led_status, i, 255, revk_rgb ((i <= (uint32_t) rgbleds * beep * MICMS / 1000) ? 'R' : 'K'));
         } else if (rgbleds < 3)
         {                      // Simple status - old boards
            char c = 'K';
            if (mic_mode == MIC_RECORD)
               c = (dark ? 'B' : 'K');
            else if (mic_mode == MIC_SIP)
               c = (sip_mode == SIP_IC || sip_mode == SIP_OG) ? 'G' : 'R';
            if (b.charging && tick < 5)
               c = tolower (c); // Charging so blink
            revk_led (led_status, 0, 255, revk_blinker ());
            for (int i = 1; i < rgbleds; i++)
               revk_led (led_status, i, 255, revk_rgb (c));
         } else
         {                      // Battery level or status, new boards
            if (mic_mode)
               for (int i = 0; i < rgbleds; i++)
                  revk_led (led_status, i, 255, 0);     // Off while recording
            else
            {
               uint32_t l = 0;
               if (isfinite (voltage))
                  l = (voltage - BAT_EMPTY) * rgbleds * 256 / (BAT_FULL - BAT_EMPTY);
               else if (b.vbus || b.charging)
                  l = 256;
               if (b.charging && tick <= 5)
                  l = l * tick / 5;
               if (b.batfull)
                  l = 256 * rgbleds;
               else if (!b.charging && b.vbus)
                  l = 0;
               for (int i = 0; i < rgbleds; i++)
               {
                  revk_led (led_status, i, l < 256 ? l : 255, revk_rgb (b.vbus ? dark ? 'g' : 'G' : dark ? 'b' : 'B'));
                  if (l < 256)
                     l = 0;
                  else
                     l -= 256;
               }
            }
         }
         REVK_ERR_CHECK (led_strip_refresh (led_status));
      }
   }
   jo_t e (esp_err_t err, const char *msg)
   {                            // Error
      jo_t j = jo_object_alloc ();
      if (msg)
         jo_string (j, "message", msg);
      if (err)
         jo_string (j, "error", esp_err_to_name (err));
      if (micdata.set)
         jo_int (j, "data", micdata.num);
      if (micclock.set)
         jo_int (j, "clock", micclock.num);
      return j;
   }
   while (!b.die)
   {                            // Loop here as we restart for SIP on/off
      mic_mode_t mode = mic_mode;
      if (!mode)
      {
         if (sip_mode > SIP_REGISTERED)
            mode = MIC_SIP;
         else if (b.micon)
            mode = MIC_RECORD;
      }
      if (!mode)
      {
         led (sdrgb, 0);
         usleep (100000);
         continue;
      }
      mic_mode = mode;
      ESP_LOGE (TAG, "Mic mode %d", mode);
      revk_disable_upgrade ();
      esp_err_t err;
      i2s_chan_config_t chan_cfg = I2S_CHANNEL_DEFAULT_CONFIG (I2S_NUM_AUTO, I2S_ROLE_MASTER);
      if (b.sharedi2s)
         err = i2s_new_channel (&chan_cfg, &spk_handle, &mic_handle);   // Shared
      else
         err = i2s_new_channel (&chan_cfg, NULL, &mic_handle);
      uint8_t beep = 1;
      if (micbeep)
         beep = 1000 / MICMS + 1;
      uint8_t rawbytes = (micws.set ? micgain ? 4 : 3 : 2);     // No WS means PDM (16 bit)
      if (mode == MIC_SIP)
      {
         micfreq = SIP_RATE;
         micchannels = 1;
         micbytes = 2;
         micsamples = SIP_BYTES;
         beep = 0;
      } else if (mode == MIC_RECORD || mode == MIC_TEST)
      {
         micfreq = micrate;
         micchannels = (micstereo ? 2 : 1);
         micbytes = (micws.set && !micgain ? 3 : 2);
         micsamples = micfreq * MICMS / 1000;
         if (wifirecord && !b.miconha)
            revk_disable_wifi ();
      }
      b.overrun = 0;
      sdin = sdout = 0;
      for (int i = 0; i < MICQUEUE; i++)
         micaudio[i] = mallocspi (micchannels * micbytes * micsamples);
      uint8_t *raw = NULL;
      if (micbytes != rawbytes)
         raw = mallocspi (micchannels * rawbytes * micsamples);
      if (micws.set)
      {                         // 24 bit Philips format
         ESP_LOGE (TAG, "Mic init CLK %d DAT %d WS %d", micclock.num, micdata.num, micws.num);
         i2s_std_config_t cfg = {
            .clk_cfg = I2S_STD_CLK_DEFAULT_CONFIG (micfreq),
            .slot_cfg = I2S_STD_PHILIPS_SLOT_DEFAULT_CONFIG ((rawbytes == 4 ? I2S_DATA_BIT_WIDTH_32BIT :        //
                                                              rawbytes == 3 ? I2S_DATA_BIT_WIDTH_24BIT :        //
                                                              I2S_DATA_BIT_WIDTH_16BIT),
                                                             (micchannels == 2 ? I2S_SLOT_MODE_STEREO : I2S_SLOT_MODE_MONO)),
            .gpio_cfg = {
                         .mclk = I2S_GPIO_UNUSED,
                         .bclk = micclock.num,
                         .ws = micws.num,
                         .dout = I2S_GPIO_UNUSED,
                         .din = micdata.num,
                         .invert_flags = {
                                          .mclk_inv = false,
                                          .bclk_inv = micclock.invert,
                                          .ws_inv = micws.invert,
                                          },
                         },
         };
         if (b.sharedi2s)
            cfg.gpio_cfg.dout = spkdata.num;    // Shared
         cfg.slot_cfg.slot_mask = (micchannels == 2 ? I2S_STD_SLOT_BOTH : micright ? I2S_STD_SLOT_RIGHT : I2S_STD_SLOT_LEFT);
         if (rawbytes == 3)
            cfg.clk_cfg.mclk_multiple = 384;
         if (!err)
            err = i2s_channel_init_std_mode (mic_handle, &cfg);
      } else
      {                         // PDM 16 bit
         ESP_LOGE (TAG, "Mic init PDM CLK %d DAT %d", micclock.num, micdata.num);
         i2s_pdm_rx_config_t cfg = {
            .clk_cfg = I2S_PDM_RX_CLK_DEFAULT_CONFIG (micfreq),
            .slot_cfg = I2S_PDM_RX_SLOT_DEFAULT_CONFIG (I2S_DATA_BIT_WIDTH_16BIT,
                                                        (micchannels == 2 ? I2S_SLOT_MODE_STEREO : I2S_SLOT_MODE_MONO)),
            .gpio_cfg = {
                         .clk = micclock.num,
                         .din = micdata.num,
                         .invert_flags = {
                                          .clk_inv = micclock.invert}
                         }
         };
         cfg.slot_cfg.slot_mask = (micchannels == 2 ? I2S_PDM_SLOT_BOTH : micright ? I2S_PDM_SLOT_RIGHT : I2S_PDM_SLOT_LEFT);
         if (!err)
            err = i2s_channel_init_pdm_rx_mode (mic_handle, &cfg);
      }
      gpio_pulldown_en (micdata.num);
      if (!err)
         err = i2s_channel_enable (mic_handle);
      if (err)
      {
         ESP_LOGE (TAG, "Mic I2S failed");
         jo_t j = e (err, "Failed init I2S");
         revk_error ("i2s", &j);
         vTaskDelete (NULL);
         return;
      }
      uint8_t phase = 0;
      ESP_LOGE (TAG, "Mic started mode %d, %ld*%d*%d bits at %ldHz - mapped to %d*%d bits", mode, micsamples, micchannels,
                rawbytes * 8, micfreq, micchannels, micbytes * 8);
      if (!beep)
         led ('C', 0);
      while (!b.die && mic_mode)
      {
         if (beep)
            led (dark ? 'l' : 'G', --beep);
         size_t n = 0;
         i2s_channel_read (mic_handle, raw ? : micaudio[sdin], micchannels * rawbytes * micsamples, &n, MICMS * 2);
         if (n < micchannels * rawbytes * micsamples)
            continue;
         if (raw)
         {                      // Process to 16 bits
            if (rawbytes != 4 || micbytes != 2)
            {
               ESP_LOGE (TAG, "Not coded %d->%d", rawbytes, micbytes);
               continue;
            }
            int32_t *i = (void *) raw;
            int16_t *o = (void *) micaudio[sdin];
            int s = micchannels * micsamples;
            while (s--)
            {
               int32_t v = ((*i++) / 256 * (micgain ? : 1)) / 256;
               if (v > 32767)
                  v = 32767;
               else if (v < -32768)
                  v = -32768;
               *o++ = v;
            }
         }
         switch (mode)
         {
         case MIC_TEST:
            {
               int16_t *i = (void *) micaudio[sdin];
               for (int s = 0; s < micsamples && (!b.micokl || !b.micokr); s++)
               {
                  if (*i++)
                     b.micokl = 1;
                  if (*i++)
                     b.micokr = 1;
               }
               if (!b.micokl)
                  ESP_LOGE (TAG, "Mic L not OK");
               if (!b.micokr)
                  ESP_LOGE (TAG, "Mic R not OK");
               mic_mode = MIC_IDLE;     // End test
            }
            break;
         case MIC_SIP:
            if (sip_mode <= SIP_REGISTERED)
               mic_mode = MIC_IDLE;     // End SIP
            else if (sip_mode == SIP_IC || sip_mode == SIP_OG)
            {
               int16_t *i = (void *) micaudio[sdin];
               uint8_t *o = (void *) micaudio[sdin];
               for (int s = 0; s < micsamples; s++)
                  *o++ = sip_pcm13_to_rtp[(*i++) / 8 + 4096];
               sip_audio (micsamples, (void *) micaudio[sdin]);
            }
            break;
         case MIC_RECORD:      // These are not as fast as SIP, so do LED
            if (!b.micon)
               mic_mode = MIC_IDLE;     // End recording
            else
            {
               if (beep)
               {
                  uint8_t *p = (void *) micaudio[sdin];
                  uint8_t f = ((micrate / 2000) / 2 ? : 1);
                  for (int s = 0; s < micsamples; s++)
                  {
                     for (int c = 0; c < micchannels; c++)
                     {
                        for (int z = 0; z < micbytes - 1; z++)
                           *p++ = 0;
                        *p++ = ((phase >= f) ? 0xF8 : 0x08);
                     }
                     phase++;
                     if (phase == f * 2)
                        phase = 0;
                  }
               }
               if ((sdin + 1) % MICQUEUE == sdout)
               {
                  if (!b.overrun)
                  {
                     b.overrun = 1;
                     led ('R', 0);
                  }
                  ESP_LOGE (TAG, "Mic overflow");
               } else
                  sdin = (sdin + 1) % MICQUEUE;
            }
            break;
         default:
         }
      }
      i2s_channel_disable (mic_handle);
      free (raw);
      for (int i = 0; i < MICQUEUE; i++)
         free (micaudio[i]);
      i2s_del_channel (mic_handle);
      revk_enable_upgrade ();
      if (wifirecord && (!wifiusb || b.vbus))
         revk_enable_wifi ();
      ESP_LOGE (TAG, "Mic stopped");
   }
   led ('K', 0);
   vTaskDelete (NULL);
}

void
spk_task (void *arg)
{
   ESP_LOGE (TAG, "Spk init BCLK %d DAT %d LR %d", spkbclk.num, spkdata.num, spklrc.num);
   if (!morsemessage && *morsestart)
      morsemessage = strdup (morsestart);
   while (!b.die)
   {
      uint8_t morseprosign = 0;
      const char *morsep = NULL;
      const char *tonep = NULL;
      spk_mode_t mode = SPK_IDLE;
      if (sip_mode > SIP_REGISTERED)
         mode = SPK_SIP;
      else if (morsemessage || tones)
         mode = SPK_TONE;
      // TODO WAV mode
      if (!mode)
      {                         // Speaker not needed
         usleep (100000);
         continue;
      }
      revk_gpio_output (spkpwr, 1);     // Power on
      esp_err_t e = 0;
      if (mode == SPK_WAV)
      {
         // TODO rate depends on WAV format
         if (b.sharedi2s)
            spkfreq = micrate;  // Shared with mic - so not going to work with playing WAV file
         else
            spkfreq = 8000;     // TODO
         spkchannels = 1;       // This gets complicated later if not 1
         spkbytes = 2;          // This gets complicated later if not 2, so needs some though
         spksamples = spkfreq * SPKMS / 1000;
      } else
      {
         spkfreq = SIP_RATE;
         spkchannels = 1;
         spkbytes = 2;
         spksamples = SIP_BYTES;
      }
      if (b.sharedi2s)
         spk_handle = mic_handle;
      else
      {
         i2s_chan_config_t chan_cfg = I2S_CHANNEL_DEFAULT_CONFIG (I2S_NUM_AUTO, I2S_ROLE_MASTER);
         e = i2s_new_channel (&chan_cfg, &spk_handle, NULL);
         i2s_std_config_t cfg = {
            .clk_cfg = I2S_STD_CLK_DEFAULT_CONFIG (spkfreq),
            .slot_cfg =
               I2S_STD_PHILIPS_SLOT_DEFAULT_CONFIG (sizeof (audio_t) == 1 ? I2S_DATA_BIT_WIDTH_8BIT : sizeof (audio_t) ==
                                                    2 ? I2S_DATA_BIT_WIDTH_16BIT : I2S_DATA_BIT_WIDTH_32BIT, I2S_SLOT_MODE_MONO),
            .gpio_cfg = {
                         .mclk = I2S_GPIO_UNUSED,
                         .bclk = spkbclk.num,
                         .ws = spklrc.num,
                         .dout = spkdata.num,
                         .din = I2S_GPIO_UNUSED,
                         .invert_flags = {
                                          .mclk_inv = false,
                                          .bclk_inv = spkbclk.invert,
                                          .ws_inv = spklrc.invert,
                                          },
                         },
         };
         if (!e)
            e = i2s_channel_init_std_mode (spk_handle, &cfg);
      }
      if (!e)
         e = i2s_channel_enable (spk_handle);
      if (e)
      {
         ESP_LOGE (TAG, "Spk I2S failed");
         jo_t j = jo_object_alloc ();
         jo_string (j, "error", esp_err_to_name (e));
         revk_error ("spk", &j);
         vTaskDelete (NULL);
         return;
      }
      spk_mode = mode;
      ESP_LOGE (TAG, "Spk started mode %d, %ld*%d*%d bits at %ldHz", mode, spksamples, spkchannels, spkbytes * 8, spkfreq);
      audio_t *samples = mallocspi (spkchannels * spkbytes * spksamples);
      uint16_t on = 1,
         off = 0,
         morseu = 0,            // Timings for morse
         morsef = 0,
         dtmfu = 0,             // Timings for DTMF
         dtmfg = 0;
      uint32_t phase1 = 0,
         phase2 = 0,
         freq1 = 0,
         freq2 = 0;
      uint32_t level1 = 0,
         level2 = 0;
      int32_t tablesin (uint32_t p)
      {                         // 8kHz SIN
         if (p > SIP_RATE / 2)
            return -tablesin (p - SIP_RATE / 2);
         if (p > SIP_RATE / 4)
            return tablesin (SIP_RATE / 2 - p);
         return sip_sin4_8k[p];
      }
      if (mode == SPK_SIP)
      {
         level1 = 50;           // Ring beeps
         freq1 = 1000;
         on = SIP_RATE / 3;
         off = SIP_RATE / 10;
      }
      if (mode == SPK_TONE)
      {
         if (tones)
         {
            tonep = tones;      // New tones
            dtmfu = dtmftone * spkfreq / 1000;
            dtmfg = dtmfgap * spkfreq / 1000;
         }
         if (morsemessage)
         {
            morsep = morsemessage;      // New message
            morsef = (60 * spkfreq / morsefwpm - 31 * morseu) / 19;
            if (morsef < morseu)
               morsef = morseu;
            morseu = 60 * spkfreq / morsewpm / 50;
         }
      }
      while (!b.die && mode)
      {
         switch (mode)
         {
         case SPK_TONE:
            {
               for (int i = 0; i < spksamples; i++)
               {
                  samples[i] = 0;
                  if (on)
                  {
                     on--;
                     if (freq2)
                     {
                        samples[i] = (tablesin (phase1) * (int) level1 + tablesin (phase2) * (int) level2) / 100 / 4;
                        phase2 += freq2;
                        if (phase2 >= SIP_RATE)
                           phase2 -= SIP_RATE;
                     } else
                        samples[i] = tablesin (phase1) * (int) level1 / 100 / 2;
                     phase1 += freq1;
                     if (phase1 >= SIP_RATE)
                        phase1 -= SIP_RATE;
                     continue;
                  }
                  if (off)
                  {
                     off--;
                     continue;
                  }
                  if (!tonep || !*tonep)
                  {
                     tonep = NULL;
                     free (tones);
                     tones = NULL;
                     if (morsep)
                     {          // More morse
                        if (!morseprosign)
                           off = morsef * 3 - morseu;   // Character gap (we did morseu already)
                        while (*morsep == '[')
                        {
                           morseprosign = 1;
                           morsep++;
                        }
                        if (!*morsep)
                        {       // End of morse
                           morseprosign = 0;
                           morsep = NULL;
                           free (morsemessage);
                           morsemessage = NULL;
                           off = morsef * 7;    // Word gap
                           continue;
                        }
                        char c = toupper ((int) *morsep++);
                        while (*morsep == ']')
                        {
                           morseprosign = 0;
                           morsep++;
                        }
                        for (int i = 0; i < sizeof (morse) / sizeof (*morse); i++)
                           if (morse[i].c == c)
                           {
                              tonep = tones = strdup (morse[i].m);
                              break;
                           }
                        if (!tones)
                        {
                           off = morsef * 7 - morseu;   // Word gap
                           continue;
                        }
                        if (off)
                           continue;
                     }
                  }
                  if (!tones)
                  {             // End
                     if (morsep)
                        off = morsef * 7 - morseu;      // Word gap (we did morseu already)
                     else
                     {
                        mode = SPK_IDLE;
                        off = dtmfg;
                     }
                     continue;
                  }
                  if (*tonep == '.')
                  {             // Morse dot
                     level1 = morselevel;
                     on = morseu;
                     off = morseu;
                     freq1 = morsefreq;
                     freq2 = 0;
                  } else if (*tonep == '-')
                  {             // Morse dash
                     level1 = morselevel;
                     on = morseu * 3;
                     off = morseu;
                     freq1 = morsefreq;
                     freq2 = 0;
                  } else
                  {             // DTMF
                     level2 = level1 = dtmflevel;
                     off = dtmfg;
                     static const char dtmf[] = "123A456B789C*0#D";
                     static const uint32_t col[] = { 1209, 1336, 1477, 1633 };
                     static const uint32_t row[] = { 697, 770, 852, 941 };
                     const char *p = strchr (dtmf, *tonep);
                     if (p)
                     {
                        freq1 = col[(p - dtmf) % 4];
                        freq2 = row[(p - dtmf) / 4];
                        on = dtmfu;
                     }
                  }
                  tonep++;
               }
               size_t l = 0;
               i2s_channel_write (spk_handle, samples, spkbytes * spkchannels * spksamples, &l, SPKMS * 2);
            }
            break;
         case SPK_SIP:
            if (sip_mode <= SIP_REGISTERED)
               mode = SIP_IDLE;
            else if (sip_mode == SIP_IC_ALERT)
            {
               // TODO this is continuous, needs cycling as normal ringing tone
               for (int i = 0; i < spksamples; i++)
               {
                  if (on)
                  {
                     on--;
                     samples[i] = tablesin (phase1) * (int) level1 / 100 / 2;
                     phase1 += freq1;
                     if (phase1 >= SIP_RATE)
                        phase1 -= SIP_RATE;
                     continue;
                  }
                  if (off)
                  {
                     off--;
                     samples[i] = 0;
                     if (!off)
                     {
                        freq1 = 3000 - freq1;
                        on = off = SIP_RATE / 10;
                     }
                  }
               }
               size_t l = 0;
               i2s_channel_write (spk_handle, samples, spkbytes * spkchannels * spksamples, &l, 100);
            }
            break;
         default:
         }
      }
      spk_mode = SPK_IDLE;
      ESP_LOGE (TAG, "Spk stopped");
      revk_gpio_output (spkpwr, 0);
      if (!b.sharedi2s)
      {
         i2s_channel_disable (spk_handle);
         i2s_del_channel (spk_handle);
      }
   }
   if (spkpwr.set && rtc_gpio_is_valid_gpio (spkpwr.num))
   {
      rtc_gpio_set_direction_in_sleep (spkpwr.num, RTC_GPIO_MODE_OUTPUT_ONLY);
      rtc_gpio_set_level (spkpwr.num, sddat3.invert);
   }
   vTaskDelete (NULL);
}

void
chg_task (void *p)
{
   revk_gpio_input (chg);
   revk_gpio_input (vbus);
   revk_gpio_output (adce, 1);  // Waste of time FFS
   adc_oneshot_unit_handle_t adc_handle;
   adc_channel_t adc_channel = 0;
   adc_cali_handle_t adc_cali_handle = NULL;
   if (adc.set)
   {
      adc_unit_t adc_unit = 0;
      adc_oneshot_io_to_channel (adc.num, &adc_unit, &adc_channel);
      ESP_LOGE (TAG, "ADC %d unit %d channel %d", adc.num, adc_unit, adc_channel);
      adc_oneshot_unit_init_cfg_t init_config1 = {
         .unit_id = adc_unit,
         .ulp_mode = ADC_ULP_MODE_DISABLE,
      };
      adc_oneshot_new_unit (&init_config1, &adc_handle);
      adc_oneshot_chan_cfg_t config = {
         .bitwidth = ADC_BITWIDTH_DEFAULT,
         .atten = ADC_ATTEN,
      };
      adc_oneshot_config_channel (adc_handle, adc_channel, &config);
#if ADC_CALI_SCHEME_CURVE_FITTING_SUPPORTED
      adc_cali_curve_fitting_config_t cali_config = {
         .unit_id = adc_unit,
         .chan = adc_channel,
         .atten = ADC_ATTEN,
         .bitwidth = ADC_BITWIDTH_DEFAULT,
      };
      adc_cali_create_scheme_curve_fitting (&cali_config, &adc_cali_handle);
#else
#if ADC_CALI_SCHEME_LINE_FITTING_SUPPORTED
      adc_cali_line_fitting_config_t cali_config = {
         .unit_id = adc_unit,
         .atten = ADC_ATTEN,
         .bitwidth = ADC_BITWIDTH_DEFAULT,
      };
      adc_cali_create_scheme_line_fitting (&cali_config, &adc_cali_handle);
#endif
#endif
   }
   uint8_t charge = 0;
   uint8_t tick = 0;
   while (!b.die)
   {
      charge = (charge << 1) | revk_gpio_get (chg);
      uint8_t v = revk_gpio_get (vbus);
      if (v != b.vbus)
      {
         b.vbus = v;
         if (wifiusb)
         {
            if (b.vbus)
               revk_enable_wifi ();
            else
               revk_disable_wifi ();
         }
      }
      b.charging = ((b.vbus && charge == 255) ? 1 : 0);
      b.batfull = ((b.vbus && !charge) ? 1 : 0);
      if (b.vbus && charge && charge != 255)
         voltage = NAN;         // No bat
      else if (adc.set && isnan (voltage))
         tick = 0;
      if (adc.set && !tick)
      {
         tick = 10;
         int volt = 0;
         adc_oneshot_read (adc_handle, adc_channel, &volt);
         adc_oneshot_get_calibrated_result (adc_handle, adc_cali_handle, adc_channel, &volt);
         voltage = volt * ADC_SCALE;
      }
      usleep (100000);
      tick--;
   }
   voltage = NAN;
   adc_oneshot_del_unit (adc_handle);
   vTaskDelete (NULL);
}

void
sip_debug (uint8_t rx, struct sockaddr_storage *addr, const char *message)
{
   ESP_LOG_BUFFER_HEX_LEVEL (rx ? "Rx" : "Tx", addr, sizeof (*addr), ESP_LOG_ERROR);
   ESP_LOGE (rx ? "Rx" : "Tx", "%s", message);
   // TODO log to MQTT
}

void
sip_callback (sip_state_t state, uint8_t len, const uint8_t * data)
{
   if (sip_mode != state)
   {
      sip_mode = state;
      ESP_LOGE (TAG, "SIP state %d", state);
      if (state == SIP_IC_ALERT)
      {
         if ((spk_mode && spk_mode != SPK_SIP) || (mic_mode && mic_mode != MIC_SIP))
         {
            ESP_LOGE (TAG, "Busy %d/%d", spk_mode, mic_mode);
            sip_hangup ();
         } else if (!button.set || !spklrc.set)
         {
            ESP_LOGE (TAG, "Answer");
            sip_answer ();
         }
      }
   }
   if (data && len == SIP_BYTES && spk_mode == SPK_SIP && (state == SIP_IC || state == SIP_OG || state == SIP_OG_ALERT))
   {
      int16_t samples[SIP_BYTES];
      for (int i = 0; i < SIP_BYTES; i++)
         samples[i] = sip_rtp_to_pcm13[data[i]] * 8;
      size_t l = 0;
      i2s_channel_write (spk_handle, samples, SIP_BYTES * 2, &l, 100);
   }
}

void
app_main ()
{
   //ESP_LOGE (TAG, "Started");
   revk_boot (&app_callback);
   revk_start ();
   sd_mutex = xSemaphoreCreateBinary ();
   xSemaphoreGive (sd_mutex);
   if (micws.num == spklrc.num && micclock.num == spkbclk.num)
      b.sharedi2s = 1;
   httpd_config_t config = HTTPD_DEFAULT_CONFIG ();     // When updating the code below, make sure this is enough
   //  Note that we 're also 4 adding revk' s web config handlers
   config.max_uri_handlers = 8;
   if (!httpd_start (&webserver, &config))
   {
      revk_web_settings_add (webserver);
      register_get_uri ("/", web_root);
      register_post_uri ("/", web_root);
   }
   revk_gpio_output (rgbpwr, 1);        // Power on LED
   if (rgbstatus.set)
   {
      led_strip_config_t strip_config = {
         .strip_gpio_num = rgbstatus.num,
         .max_leds = rgbleds ? : 1,
         .color_component_format = LED_STRIP_COLOR_COMPONENT_FMT_GRB,
         .led_model = LED_MODEL_WS2812, // LED strip model
         .flags.invert_out = rgbstatus.invert,
      };
      led_strip_rmt_config_t rmt_config = {
         .clk_src = RMT_CLK_SRC_DEFAULT,        // different clock source can lead to different power consumption
         .resolution_hz = 10 * 1000 * 1000,     // 10 MHz
      };
      REVK_ERR_CHECK (led_strip_new_rmt_device (&strip_config, &rmt_config, &led_status));
   }
   // Tasks
   if (spklrc.set && spkbclk.set && spkdata.set)
      revk_task ("spk", spk_task, NULL, 8);
   if (micdata.set && micclock.set)
      revk_task ("mic", mic_task, NULL, 8);
   if (sdcmd.set && sddat0.set && sdclk.set)
      revk_task ("sd", sd_task, NULL, 16);
   if (chg.set)
      revk_task ("chg", &chg_task, NULL, 4);
   if (irgpio.set)
      ir_start (irgpio, ir_callback);
   if (*siphost)
      sip_register (siphost, sipuser, sippass, sip_callback, sipdebug ? sip_debug : NULL);
   // Buttons and LEDs
   revk_gpio_input (button);
   uint8_t press = 255;
   uint8_t usb = 1;
   uint8_t tick = 0;
   while (!b.die)
   {
      if (tick++ >= 10)
      {
         tick = 0;
         if (revk_shutting_down (NULL))
         {
            if (b.micon)
            {
               b.micon = 0;
               b.status = 1;
            } else
               b.die = 1;
         }
      }
      usleep (100000);
      uint32_t up = uptime ();
      if (b.status)
      {
         b.status = 0;
         revk_command ("status", NULL);
      }
      if (button.set && autooff && !spk_mode && !mic_mode && (!usb || !autousb))
      {                         // Idle
         if (!idle)
            idle = up + autooff;
         else if (idle < up)
            b.die = 1;
      } else
         idle = 0;
      if (b.ha)
         send_ha_config ();
      if (revk_gpio_get (button))
      {                         // Pressed
         if (press < 255)
            press++;
         if (press == 10 && sip_mode == SIP_IC_ALERT)
            sip_hangup ();
         if (press == 30)
         {
            b.die = 1;
            b.micon = 0;
         }
      } else if (press)
      {                         // Released
         if (press < 30)
         {
            if (sip_mode == SIP_IC_ALERT)
               sip_answer ();
            else if (sip_mode == SIP_IC || sip_mode == SIP_OG || sip_mode == SIP_OG_ALERT)
               sip_hangup ();
            else if ((!card || press >= 10) && *sipoutgoing)
               sip_call (NULL, sipoutgoing, strchr (sipoutgoing, '@') ? NULL : siphost, sipuser, sippass);
            else if (!b.micon && !b.sdpresent)
               ESP_LOGE (TAG, "No card");
            else
            {
               b.miconha = 0;
               b.micon = 1 - b.micon;
               b.status = 1;
            }
         }
         press = 0;
      }
   }
   usb_off ();
   if (revk_shutting_down (NULL))
   {
      while (revk_shutting_down (NULL))
      {
         int32_t l = revk_ota_progress () * rgbleds * 256 / 100;
         if (l < 64)
            l = 64;
         for (int i = 0; i < rgbleds; i++)
         {
            revk_led (led_status, i, l < 256 ? l : 255, revk_rgb ('R'));
            if (l < 256)
               l = 0;
            else
               l -= 256;
         }
         REVK_ERR_CHECK (led_strip_refresh (led_status));
         sleep (1);
      }
   } else if (*sdupload && b.sdpresent && !revk_shutting_down (NULL))
   {                            // Upload
      revk_enable_wifi ();
      revk_wait_wifi (10);
      do_upload ();
   }
   revk_pre_shutdown ();
   sleep (1);                   // Allow tasks to end
   // Go dark
   if (led_status)
   {
      for (int i = 0; i < rgbleds; i++)
         revk_led (led_status, i, 255, 0);
      REVK_ERR_CHECK (led_strip_refresh (led_status));
   }
   if (button.set)
   {
      ESP_LOGE (TAG, "Wait release");
      while (revk_gpio_get (button))
         usleep (100000);       // release
   }
   if (vbus.set && revk_gpio_get (vbus))
   {
      ESP_LOGE (TAG, "Wait USB");
      while (revk_gpio_get (vbus))
      {
         if (revk_gpio_get (button))
            esp_restart ();
         usleep (10000);
      }
   }
   ESP_LOGE (TAG, "Shutdown");
   // Shutdown
#if     CONFIG_REVK_GPIO_POWER >= 0
   if (button.set && button.pulldown && !button.invert)
   {
      ESP_LOGE (TAG, "Power off GPIO %d", button.num);
      gpio_set_level (button.num, 0);
      gpio_set_direction (button.num, GPIO_MODE_OUTPUT_OD);
      gpio_hold_en (button.num);
   }
   ESP_LOGE (TAG, "Power off GPIO %d", CONFIG_REVK_GPIO_POWER);
   gpio_set_direction (CONFIG_REVK_GPIO_POWER, GPIO_MODE_OUTPUT_OD);
   gpio_set_level (CONFIG_REVK_GPIO_POWER, 0);
   gpio_hold_en (CONFIG_REVK_GPIO_POWER);
   sleep (1);
   // Should be off now - if not, undo so we can deep sleep
   gpio_hold_dis (CONFIG_REVK_GPIO_POWER);
   if (button.set && button.pulldown && !button.invert)
   {
      gpio_hold_dis (button.num);
      revk_gpio_input (button);
   }
#endif
   ESP_LOGE (TAG, "Sleep");

   // Alarm
   if (rtc_gpio_is_valid_gpio (button.num))
   {                            // Deep sleep
      ESP_LOGE (TAG, "Deep sleep on button %d %s", button.num, button.invert ? "low" : "high");
      rtc_gpio_set_direction_in_sleep (button.num, RTC_GPIO_MODE_INPUT_ONLY);
      REVK_ERR_CHECK (esp_sleep_enable_ext0_wakeup (button.num, 1 - button.invert));
   } else
   {                            // Light sleep
      ESP_LOGE (TAG, "Light sleep on button %d %s", button.num, button.invert ? "low" : "high");
      gpio_wakeup_enable (button.num, button.invert ? GPIO_INTR_LOW_LEVEL : GPIO_INTR_HIGH_LEVEL);
      esp_sleep_enable_gpio_wakeup ();
   }
   revk_gpio_set (rgbpwr, 0);   // LED off
   // Shutdown
   sleep (1);                   // Allow tasks to end
   // Night night
   if (rtc_gpio_is_valid_gpio (button.num))
      esp_deep_sleep_start ();
   else
      esp_light_sleep_start ();
   esp_restart ();
}
