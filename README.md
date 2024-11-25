# ESP32-Audio

This project provides software and PCB designs for working with I2S microphone and speaker, most notably a self contacined battery opertated audio recorder to micro SD card.

The software provides working for a number of different use cases.

The hardware is an audio recorder, but the [LED](https://github.com/revk/ESP32-LED) project also has audio hardware with microphones and speakers.

## Microphone

The software is designed to work with I2S audio input, and is coded and tested for two specific microphones. Others may work, but I2S has a number of options - so ask me if you need some other settings.

* [TDK T3902](https://www.lcsc.com/datasheet/lcsc_datasheet_2401291125_TDK-InvenSense-MMICT390200012_C3171752.pdf) is an I2S PDM microphone (so 16 bits per sample)
* [TDK ICS-43434](https://www.lcsc.com/datasheet/lcsc_datasheet_2312010321_TDK-InvenSense-ICS-43434_C5656610.pdf) is an I2S microphone (24 bits) with sample rates up to 51.6kHz

The software can work with one or two microphones (i.e. mono or stereo). When two microphones, they are the same type, on the same bus, with one wired as *left* and one as *right* channel. 

## Speaker

For I2S output the [MAX98357A](https://www.lcsc.com/datasheet/lcsc_datasheet_2106070436_Analog-Devices-Inc--Maxim-Integrated-MAX98357AEWL-T_C2682619.pdf) is recommended. This can be one chip working as *left*, *right*, or *left+right* channels, or as two chips on the same bus, one as *left* and one as *right*.

* `spkrate` sets the speaker rate, which (for the MAX98357A) can be 8kHz, 16kHz, 32kHz, 44.1kHz, 48kHz, 99.2kHz, or 96kHz.

## Input processing

The input from the I2S microphones can be mono or stereo, and can be 16 or 24 bits. If a PDM microphone is used it is always 16 bits. If the ICS-43434 microphone is used it is received as 24 bits which can either be passed on unprocessed, or converted to 16 bits.

* `micws` is the GPIO for the channel, if not set it is assumed to be PDM mode
* `micrate` sets the sample rate
* `micstereo` is set for stereo working
* `micright` is set for *right* channel when mono, and also reverses *left* and *right* when processing the 24 bits to 16 bits
* `micgain` sets the gain for processing 24 bits to 16

When `micgain` is set to `0`, or when using a PDM microphone, the samples (stereo or mono) are used as received, with no processing. This means for PDM mode this is 16 bits per sample, and for ICS-43434 it is 24 bits per sample.

When `micgain` is not `0`, for ICS-43434, the 24 bit samples are processed by multiplying by `micgain/256` and clipping to 16 bits (`-32768` to `32767`). If `micstereo` and `micright` then *left* and *right* are swapped. A `micgain` of `8` works well for speech.

## Output

The output via the speaker can be one of the following - normally managed via MQTT control messages or web interface, though SIP is automatic when a call arrives.

* Morse code
* DTMF
* Playing a WAV file from SD card
* SIP (see below)

The format will depend on the source - the MAX98357A can handle 16, 24, or 32 bits per channel.

(WAV file playing not yet)

## Audio recorder

The main use of this software is as an *audio recorder*. This will record from the microphone(s) to a WAV file on the micro SD card. It allows a `button` GPIO to start/stop recording and power on/off. It allows for a separate WS2812 record status LED. The PCB design includes LiPo charging.

Options are planned:-

* Stream audio over WiFI by some means
* Stream audio over bluetooth, if ever I work out how to do that
* Send and delete WAV files after a recording is complete (http POST)

(For now, it is simply WAV file on Micro SD card)

## SIP working

The software allows settings `siphost`, `sipuser`, and `sippass`, such that the device registers with a SIP server.

Once registered it can then accept a call, and pass audio both ways over RTP, 8kHz alaw. Only one call at a time.

* The microphone is changed to mono (selected by `micright`) 8kHz, and either 16 bit PDM, or processed 24 bit to 16 bit using `micgain`, and then companded to alaw.
* The speaker is sent dual mono audio expanded from 8kHz alaw to 16 bits per sample.

Note that there is no echo cancellation, so a caller is likely to hear their own audio come back to them.

Once the call is complete, the audio processing reverts to previous settings.

(This is work in progress)