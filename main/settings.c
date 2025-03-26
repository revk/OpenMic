// Settings
// Generated from:-
// main/settings.def
// components/ESP32-RevK/settings.def

#include <stdint.h>
#include "sdkconfig.h"
#include "settings.h"
revk_settings_bits_t revk_settings_bits={0};
#define	str(s)	#s
#define	quote(s)	str(s)
revk_settings_t const revk_settings[]={
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="spkpwr",.comment="Speaker power on",.group=1,.len=6,.dot=3,.def="37",.ptr=&spkpwr,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="spklrc",.comment="Speaker LR clock",.group=1,.len=6,.dot=3,.def="34",.ptr=&spklrc,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="spkbclk",.comment="Speaker Bit clock",.group=1,.len=7,.dot=3,.def="35",.ptr=&spkbclk,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="spkdata",.comment="Speaker Data",.group=1,.len=7,.dot=3,.def="36",.ptr=&spkdata,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="micdata",.comment="Microphone Data / SD",.group=2,.len=7,.dot=3,.def="43",.ptr=&micdata,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="micclock",.comment="Microphone Clock / SCK",.group=2,.len=8,.dot=3,.def="44",.ptr=&micclock,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="micws",.comment="Microphone WS (not set for PDM)",.group=2,.len=5,.dot=3,.def="42",.ptr=&micws,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.name="micrate",.comment="Microphone Input rate (when not SIP)",.group=2,.len=7,.dot=3,.def="44100",.ptr=&micrate,.size=sizeof(uint32_t),.unit="Hz",.live=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="micgain",.comment="Microphone Multiply input (set 0 for 24 bit raw)",.group=2,.len=7,.dot=3,.def="8",.ptr=&micgain,.size=sizeof(uint8_t),.live=1},
 {.type=REVK_SETTINGS_BIT,.name="micstereo",.comment="Microphone Stereo",.group=2,.len=9,.dot=3,.def="0",.bit=REVK_SETTINGS_BITFIELD_micstereo,.live=1},
 {.type=REVK_SETTINGS_BIT,.name="micright",.comment="Microphone use right channel",.group=2,.len=8,.dot=3,.def="1",.bit=REVK_SETTINGS_BITFIELD_micright,.live=1},
 {.type=REVK_SETTINGS_BIT,.name="micbeep",.comment="Add sync beep and red LED on start of recording",.group=2,.len=7,.dot=3,.bit=REVK_SETTINGS_BITFIELD_micbeep,.live=1},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="sddat2",.comment="MicroSD DAT2",.group=3,.len=6,.dot=2,.ptr=&sddat2,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="sddat3",.comment="MicroSD DAT3",.group=3,.len=6,.dot=2,.ptr=&sddat3,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕",.old="sdss"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="sdcmd",.comment="MicroSD CMD",.group=3,.len=5,.dot=2,.ptr=&sdcmd,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕",.old="sdmosi"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="sdclk",.comment="MicroSD CLK",.group=3,.len=5,.dot=2,.ptr=&sdclk,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕",.old="sdsck"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="sddat0",.comment="MicroSD DAT0",.group=3,.len=6,.dot=2,.ptr=&sddat0,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕",.old="sdmiso"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="sddat1",.comment="MicroSD DAT1",.group=3,.len=6,.dot=2,.ptr=&sddat1,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="sdcd",.comment="MicroSD CD",.group=3,.len=4,.dot=2,.ptr=&sdcd,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.name="sdrectime",.comment="Max record time per whole file",.group=3,.len=9,.dot=2,.def="3600",.ptr=&sdrectime,.size=sizeof(uint32_t),.unit="s"},
 {.type=REVK_SETTINGS_UNSIGNED,.name="sdsynctime",.comment="Max record time per file sync",.group=3,.len=10,.dot=2,.def="60",.ptr=&sdsynctime,.size=sizeof(uint32_t),.unit="s"},
 {.type=REVK_SETTINGS_STRING,.name="sdupload",.comment="Where to post, then delete, files on power off",.group=3,.len=8,.dot=2,.ptr=&sdupload,.malloc=1,.live=1},
 {.type=REVK_SETTINGS_BIT,.name="sddelete",.comment="Auto delete old files if space needed for new file",.group=3,.len=8,.dot=2,.def="1",.bit=REVK_SETTINGS_BITFIELD_sddelete,.live=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="autooff",.comment="Auto power off if idle",.group=4,.len=7,.dot=4,.def="900",.ptr=&autooff,.size=sizeof(uint32_t),.unit="s",.live=1},
 {.type=REVK_SETTINGS_BIT,.name="autousb",.comment="Auto off only if USB disconnected",.group=4,.len=7,.dot=4,.bit=REVK_SETTINGS_BITFIELD_autousb},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="button",.comment="Button",.len=6,.def="-16",.ptr=&button,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="charging",.comment="Charging status",.len=8,.ptr=&charging,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="vbus",.comment="USB power status",.len=4,.ptr=&vbus,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="ir",.comment="IR receiver",.len=2,.ptr=&ir,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="rgbstatus",.comment="Status LED",.group=5,.len=9,.dot=3,.def="41",.ptr=&rgbstatus,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕"},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="rgbled",.comment="Mic/record LED",.group=5,.len=6,.dot=3,.ptr=&rgbled,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕",.old="ledrecord"},
 {.type=REVK_SETTINGS_UNSIGNED,.name="morsefreq",.comment="Morse tone frequency",.group=6,.len=9,.dot=5,.def="600",.ptr=&morsefreq,.size=sizeof(uint32_t),.unit="Hz",.live=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="morselevel",.comment="Morse audio level",.group=6,.len=10,.dot=5,.def="50",.ptr=&morselevel,.size=sizeof(uint8_t),.unit="%",.live=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="morsewpm",.comment="Morse basic rate",.group=6,.len=8,.dot=5,.def="20",.ptr=&morsewpm,.size=sizeof(uint8_t),.unit="wpm",.live=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="morsefwpm",.comment="Morse Farnsworth rate",.group=6,.len=9,.dot=5,.def="15",.ptr=&morsefwpm,.size=sizeof(uint8_t),.unit="wpm",.live=1},
 {.type=REVK_SETTINGS_STRING,.name="morsestart",.comment="Morse initial message on power on",.group=6,.len=10,.dot=5,.def="Hello world",.ptr=&morsestart,.malloc=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="dtmflevel",.comment="DTMF tone level",.group=7,.len=9,.dot=4,.def="50",.ptr=&dtmflevel,.size=sizeof(uint8_t),.unit="%",.live=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="dtmftone",.comment="DTMF tone time",.group=7,.len=8,.dot=4,.def="0.100",.ptr=&dtmftone,.size=sizeof(uint8_t),.unit="s",.live=1,.decimal=3},
 {.type=REVK_SETTINGS_UNSIGNED,.name="dtmfgap",.comment="DTMF gap time",.group=7,.len=7,.dot=4,.def="0.100",.ptr=&dtmfgap,.size=sizeof(uint8_t),.unit="s",.live=1,.decimal=3},
 {.type=REVK_SETTINGS_STRING,.name="siphost",.comment="SIP server hostname",.group=8,.len=7,.dot=3,.ptr=&siphost,.malloc=1,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="sipuser",.comment="SIP registration username",.group=8,.len=7,.dot=3,.ptr=&sipuser,.malloc=1,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="sippass",.comment="SIP registration password",.group=8,.len=7,.dot=3,.ptr=&sippass,.malloc=1,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="sipoutgoing",.comment="SIP target or number for outgoing call",.group=8,.len=11,.dot=3,.ptr=&sipoutgoing,.malloc=1,.hide=1},
 {.type=REVK_SETTINGS_BIT,.name="sipdebug",.comment="SIP debug messages to serial log",.group=8,.len=8,.dot=3,.bit=REVK_SETTINGS_BITFIELD_sipdebug},
 {.type=REVK_SETTINGS_BIT,.name="wifilock",.comment="Lock down settings/AP mode when SD card inserted",.group=9,.len=8,.dot=4,.def="1",.bit=REVK_SETTINGS_BITFIELD_wifilock,.hide=1},
 {.type=REVK_SETTINGS_BIT,.name="wifirecord",.comment="WiFi off during recording (unless started via HA)",.group=9,.len=10,.dot=4,.def="1",.bit=REVK_SETTINGS_BITFIELD_wifirecord,.hide=1},
 {.type=REVK_SETTINGS_BIT,.name="wifiusb",.comment="WiFi off when not on USB power",.group=9,.len=7,.dot=4,.bit=REVK_SETTINGS_BITFIELD_wifiusb,.hide=1},
 {.type=REVK_SETTINGS_BIT,.name="haenable",.comment="Enable Home Assistant",.group=10,.len=8,.dot=2,.def="1",.bit=REVK_SETTINGS_BITFIELD_haenable,.hide=1},
#ifdef	CONFIG_REVK_SETTINGS_PASSWORD
 {.type=REVK_SETTINGS_STRING,.name="password",.comment="Settings password (this is not sent securely so use with care on local networks you control)",.len=8,.ptr=&password,.malloc=1,.revk=1,.hide=1,.secret=1},
#endif
 {.type=REVK_SETTINGS_STRING,.name="hostname",.comment="Host name - used in DHCP and MQTT (optional)",.len=8,.ptr=&hostname,.malloc=1,.revk=1,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="appname",.comment="Application name",.len=7,.dq=1,.def=quote(CONFIG_REVK_APPNAME),.ptr=&appname,.malloc=1,.revk=1,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="otahost",.comment="OTA hostname",.group=11,.len=7,.dot=3,.dq=1,.def=quote(CONFIG_REVK_OTAHOST),.ptr=&otahost,.malloc=1,.revk=1,.live=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="otadays",.comment="OTA auto load (days)",.group=11,.len=7,.dot=3,.dq=1,.def=quote(CONFIG_REVK_OTADAYS),.ptr=&otadays,.size=sizeof(uint8_t),.revk=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="otastart",.comment="OTA check after startup (min seconds)",.group=11,.len=8,.dot=3,.def="600",.ptr=&otastart,.size=sizeof(uint16_t),.revk=1},
 {.type=REVK_SETTINGS_BIT,.name="otaauto",.comment="OTA auto upgrade",.group=11,.len=7,.dot=3,.def="1",.bit=REVK_SETTINGS_BITFIELD_otaauto,.revk=1,.hide=1,.live=1},
#ifdef	CONFIG_REVK_WEB_BETA
 {.type=REVK_SETTINGS_BIT,.name="otabeta",.comment="OTA from beta release",.group=11,.len=7,.dot=3,.bit=REVK_SETTINGS_BITFIELD_otabeta,.revk=1,.hide=1,.live=1},
#endif
 {.type=REVK_SETTINGS_BLOB,.name="otacert",.comment="OTA cert of otahost",.group=11,.len=7,.dot=3,.dq=1,.def=quote(CONFIG_REVK_OTACERT),.ptr=&otacert,.malloc=1,.revk=1,.base64=1},
 {.type=REVK_SETTINGS_BIT,.name="dark",.comment="Default LED off",.len=4,.bit=REVK_SETTINGS_BITFIELD_dark,.revk=1,.live=1},
 {.type=REVK_SETTINGS_STRING,.name="ntphost",.comment="NTP host",.len=7,.dq=1,.def=quote(CONFIG_REVK_NTPHOST),.ptr=&ntphost,.malloc=1,.revk=1},
 {.type=REVK_SETTINGS_STRING,.name="tz",.comment="Timezone (<a href='https://gist.github.com/alwynallan/24d96091655391107939' target=_blank>info</a>)",.len=2,.dq=1,.def=quote(CONFIG_REVK_TZ),.ptr=&tz,.malloc=1,.revk=1,.hide=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="watchdogtime",.comment="Watchdog (seconds)",.len=12,.dq=1,.def=quote(CONFIG_REVK_WATCHDOG),.ptr=&watchdogtime,.size=sizeof(uint32_t),.revk=1},
#ifdef  CONFIG_IDF_TARGET_ESP32S3
 {.type=REVK_SETTINGS_UNSIGNED,.name="usbuptime",.comment="USB  turns off after this many seconds",.len=9,.dq=1,.def=quote(CONFIG_REVK_USBUPTIME),.ptr=&usbuptime,.size=sizeof(uint16_t),.revk=1},
#endif
#ifdef  CONFIG_IDF_TARGET_ESP32S3
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="factorygpio",.comment="Factory reset GPIO (press 3 times)",.len=11,.def="-21",.ptr=&factorygpio,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕",.revk=1},
#else
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="factorygpio",.comment="Factory reset GPIO (press 3 times)",.len=11,.ptr=&factorygpio,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕",.revk=1},
#endif
 {.type=REVK_SETTINGS_STRING,.name="topicgroup",.comment="MQTT Alternative hostname accepted for commands",.group=12,.len=10,.dot=5,.ptr=&topicgroup,.malloc=1,.revk=1,.array=2},
 {.type=REVK_SETTINGS_STRING,.name="topiccommand",.comment="MQTT Topic for commands",.group=12,.len=12,.dot=5,.def="command",.ptr=&topiccommand,.malloc=1,.revk=1,.old="prefixcommand"},
 {.type=REVK_SETTINGS_STRING,.name="topicsetting",.comment="MQTT Topic for settings",.group=12,.len=12,.dot=5,.def="setting",.ptr=&topicsetting,.malloc=1,.revk=1,.old="prefixsetting"},
 {.type=REVK_SETTINGS_STRING,.name="topicstate",.comment="MQTT Topic for state",.group=12,.len=10,.dot=5,.def="state",.ptr=&topicstate,.malloc=1,.revk=1,.old="prefixstate"},
 {.type=REVK_SETTINGS_STRING,.name="topicevent",.comment="MQTT Topic for event",.group=12,.len=10,.dot=5,.def="event",.ptr=&topicevent,.malloc=1,.revk=1,.old="prefixevent"},
 {.type=REVK_SETTINGS_STRING,.name="topicinfo",.comment="MQTT Topic for info",.group=12,.len=9,.dot=5,.def="info",.ptr=&topicinfo,.malloc=1,.revk=1,.old="prefixinfo"},
 {.type=REVK_SETTINGS_STRING,.name="topicerror",.comment="MQTT Topic for error",.group=12,.len=10,.dot=5,.def="error",.ptr=&topicerror,.malloc=1,.revk=1,.old="prefixerror"},
 {.type=REVK_SETTINGS_STRING,.name="topicha",.comment="MQTT Topic for homeassistant",.group=12,.len=7,.dot=5,.def="homeassistant",.ptr=&topicha,.malloc=1,.revk=1},
 {.type=REVK_SETTINGS_BIT,.name="prefixapp",.comment="MQTT use appname/ in front of hostname in topic",.group=13,.len=9,.dot=6,.dq=1,.def=quote(CONFIG_REVK_PREFIXAPP),.bit=REVK_SETTINGS_BITFIELD_prefixapp,.revk=1},
 {.type=REVK_SETTINGS_BIT,.name="prefixhost",.comment="MQTT use (appname/)hostname/topic instead of topic/(appname/)hostname",.group=13,.len=10,.dot=6,.dq=1,.def=quote(CONFIG_REVK_PREFIXHOST),.bit=REVK_SETTINGS_BITFIELD_prefixhost,.revk=1},
#ifdef	CONFIG_REVK_BLINK_DEF
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="blink",.comment="R, G, B LED array (set all the same for WS2812 LED)",.len=5,.dq=1,.def=quote(CONFIG_REVK_BLINK),.ptr=&blink,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕",.revk=1,.array=3},
#endif
#ifdef  CONFIG_REVK_APMODE
#ifdef	CONFIG_REVK_APCONFIG
 {.type=REVK_SETTINGS_UNSIGNED,.name="apport",.comment="TCP port for config web pages on AP",.group=14,.len=6,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APPORT),.ptr=&apport,.size=sizeof(uint16_t),.revk=1},
#endif
 {.type=REVK_SETTINGS_UNSIGNED,.name="aptime",.comment="Limit AP to time (seconds)",.group=14,.len=6,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APTIME),.ptr=&aptime,.size=sizeof(uint32_t),.revk=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="apwait",.comment="Wait off line before starting AP (seconds)",.group=14,.len=6,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APWAIT),.ptr=&apwait,.size=sizeof(uint32_t),.revk=1},
 {.type=REVK_SETTINGS_UNSIGNED,.gpio=1,.name="apgpio",.comment="Start AP on GPIO",.group=14,.len=6,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APGPIO),.ptr=&apgpio,.size=sizeof(revk_gpio_t),.fix=1,.set=1,.flags="- ~↓↕⇕",.revk=1},
#endif
#ifdef  CONFIG_REVK_MQTT
 {.type=REVK_SETTINGS_STRING,.name="mqtthost",.comment="MQTT hostname",.group=15,.len=8,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MQTTHOST),.ptr=&mqtthost,.malloc=1,.revk=1,.array=CONFIG_REVK_MQTT_CLIENTS,.hide=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="mqttport",.comment="MQTT port",.group=15,.len=8,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MQTTPORT),.ptr=&mqttport,.size=sizeof(uint16_t),.revk=1,.array=CONFIG_REVK_MQTT_CLIENTS,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="mqttuser",.comment="MQTT username",.group=15,.len=8,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MQTTUSER),.ptr=&mqttuser,.malloc=1,.revk=1,.array=CONFIG_REVK_MQTT_CLIENTS,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="mqttpass",.comment="MQTT password",.group=15,.len=8,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MQTTPASS),.ptr=&mqttpass,.malloc=1,.revk=1,.array=CONFIG_REVK_MQTT_CLIENTS,.secret=1,.hide=1},
 {.type=REVK_SETTINGS_BLOB,.name="mqttcert",.comment="MQTT CA certificate",.group=15,.len=8,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MQTTCERT),.ptr=&mqttcert,.malloc=1,.revk=1,.array=CONFIG_REVK_MQTT_CLIENTS,.base64=1},
#endif
 {.type=REVK_SETTINGS_BLOB,.name="clientkey",.comment="Client Key (OTA and MQTT TLS)",.group=16,.len=9,.dot=6,.ptr=&clientkey,.malloc=1,.revk=1,.base64=1},
 {.type=REVK_SETTINGS_BLOB,.name="clientcert",.comment="Client certificate (OTA and MQTT TLS)",.group=16,.len=10,.dot=6,.ptr=&clientcert,.malloc=1,.revk=1,.base64=1},
#if     defined(CONFIG_REVK_WIFI) || defined(CONFIG_REVK_MESH)
 {.type=REVK_SETTINGS_UNSIGNED,.name="wifireset",.comment="Restart if WiFi off for this long (seconds)",.group=9,.len=9,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFIRESET),.ptr=&wifireset,.size=sizeof(uint16_t),.revk=1,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="wifissid",.comment="WiFI SSID (name)",.group=9,.len=8,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFISSID),.ptr=&wifissid,.malloc=1,.revk=1,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="wifipass",.comment="WiFi password",.group=9,.len=8,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFIPASS),.ptr=&wifipass,.malloc=1,.revk=1,.hide=1,.secret=1},
 {.type=REVK_SETTINGS_STRING,.name="wifiip",.comment="WiFi Fixed IP",.group=9,.len=6,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFIIP),.ptr=&wifiip,.malloc=1,.revk=1},
 {.type=REVK_SETTINGS_STRING,.name="wifigw",.comment="WiFi Fixed gateway",.group=9,.len=6,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFIGW),.ptr=&wifigw,.malloc=1,.revk=1},
 {.type=REVK_SETTINGS_STRING,.name="wifidns",.comment="WiFi fixed DNS",.group=9,.len=7,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFIDNS),.ptr=&wifidns,.malloc=1,.revk=1,.array=3},
 {.type=REVK_SETTINGS_OCTET,.name="wifibssid",.comment="WiFI BSSID",.group=9,.len=9,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFIBSSID),.ptr=&wifibssid,.size=sizeof(uint8_t[6]),.revk=1,.hex=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="wifichan",.comment="WiFI channel",.group=9,.len=8,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFICHAN),.ptr=&wifichan,.size=sizeof(uint8_t),.revk=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="wifiuptime",.comment="WiFI turns off after this many seconds",.group=9,.len=10,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFIUPTIME),.ptr=&wifiuptime,.size=sizeof(uint16_t),.revk=1},
 {.type=REVK_SETTINGS_BIT,.name="wifips",.comment="WiFi power save",.group=9,.len=6,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFIPS),.bit=REVK_SETTINGS_BITFIELD_wifips,.revk=1},
 {.type=REVK_SETTINGS_BIT,.name="wifimaxps",.comment="WiFi power save (max)",.group=9,.len=9,.dot=4,.dq=1,.def=quote(CONFIG_REVK_WIFIMAXPS),.bit=REVK_SETTINGS_BITFIELD_wifimaxps,.revk=1},
#endif
#ifndef	CONFIG_REVK_MESH
 {.type=REVK_SETTINGS_STRING,.name="apssid",.comment="AP mode SSID (name)",.group=14,.len=6,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APSSID),.ptr=&apssid,.malloc=1,.revk=1},
 {.type=REVK_SETTINGS_STRING,.name="appass",.comment="AP mode password",.group=14,.len=6,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APPASS),.ptr=&appass,.malloc=1,.revk=1,.secret=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="apmax",.comment="AP max clients",.group=14,.len=5,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APMAX),.ptr=&apmax,.size=sizeof(uint8_t),.revk=1,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="apip",.comment="AP mode block",.group=14,.len=4,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APIP),.ptr=&apip,.malloc=1,.revk=1},
 {.type=REVK_SETTINGS_BIT,.name="aplr",.comment="AP LR mode",.group=14,.len=4,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APLR),.bit=REVK_SETTINGS_BITFIELD_aplr,.revk=1},
 {.type=REVK_SETTINGS_BIT,.name="aphide",.comment="AP hide SSID",.group=14,.len=6,.dot=2,.dq=1,.def=quote(CONFIG_REVK_APHIDE),.bit=REVK_SETTINGS_BITFIELD_aphide,.revk=1},
#endif
#ifdef	CONFIG_REVK_MESH
 {.type=REVK_SETTINGS_STRING,.name="nodename",.comment="Mesh node name",.len=8,.ptr=&nodename,.malloc=1,.revk=1,.hide=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="meshreset",.comment="Reset if mesh off for this long (seconds)",.group=17,.len=9,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MESHRESET),.ptr=&meshreset,.size=sizeof(uint16_t),.revk=1,.hide=1},
 {.type=REVK_SETTINGS_OCTET,.name="meshid",.comment="Mesh ID (hex)",.group=17,.len=6,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MESHID),.ptr=&meshid,.size=sizeof(uint8_t[6]),.revk=1,.hex=1,.hide=1},
 {.type=REVK_SETTINGS_OCTET,.name="meshkey",.comment="Mesh key",.group=17,.len=7,.dot=4,.ptr=&meshkey,.size=sizeof(uint8_t[16]),.revk=1,.secret=1,.hex=1,.hide=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="meshwidth",.comment="Mesh width",.group=17,.len=9,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MESHWIDTH),.ptr=&meshwidth,.size=sizeof(uint16_t),.revk=1,.hide=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="meshdepth",.comment="Mesh depth",.group=17,.len=9,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MESHDEPTH),.ptr=&meshdepth,.size=sizeof(uint16_t),.revk=1,.hide=1},
 {.type=REVK_SETTINGS_UNSIGNED,.name="meshmax",.comment="Mesh max devices",.group=17,.len=7,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MESHMAX),.ptr=&meshmax,.size=sizeof(uint16_t),.revk=1,.hide=1},
 {.type=REVK_SETTINGS_STRING,.name="meshpass",.comment="Mesh AP password",.group=17,.len=8,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MESHPASS),.ptr=&meshpass,.malloc=1,.revk=1,.secret=1,.hide=1},
 {.type=REVK_SETTINGS_BIT,.name="meshlr",.comment="Mesh use LR mode",.group=17,.len=6,.dot=4,.dq=1,.def=quote(CONFIG_REVK_MESHLR),.bit=REVK_SETTINGS_BITFIELD_meshlr,.revk=1,.hide=1},
 {.type=REVK_SETTINGS_BIT,.name="meshroot",.comment="This is preferred mesh root",.group=17,.len=8,.dot=4,.bit=REVK_SETTINGS_BITFIELD_meshroot,.revk=1,.hide=1},
#endif
{0}};
#undef quote
#undef str
revk_gpio_t spkpwr={0};
revk_gpio_t spklrc={0};
revk_gpio_t spkbclk={0};
revk_gpio_t spkdata={0};
revk_gpio_t micdata={0};
revk_gpio_t micclock={0};
revk_gpio_t micws={0};
uint32_t micrate=0;
uint8_t micgain=0;
revk_gpio_t sddat2={0};
revk_gpio_t sddat3={0};
revk_gpio_t sdcmd={0};
revk_gpio_t sdclk={0};
revk_gpio_t sddat0={0};
revk_gpio_t sddat1={0};
revk_gpio_t sdcd={0};
uint32_t sdrectime=0;
uint32_t sdsynctime=0;
char* sdupload=NULL;
uint32_t autooff=0;
revk_gpio_t button={0};
revk_gpio_t charging={0};
revk_gpio_t vbus={0};
revk_gpio_t ir={0};
revk_gpio_t rgbstatus={0};
revk_gpio_t rgbled={0};
uint32_t morsefreq=0;
uint8_t morselevel=0;
uint8_t morsewpm=0;
uint8_t morsefwpm=0;
char* morsestart=NULL;
uint8_t dtmflevel=0;
uint8_t dtmftone=0;
uint8_t dtmfgap=0;
char* siphost=NULL;
char* sipuser=NULL;
char* sippass=NULL;
char* sipoutgoing=NULL;
#ifdef	CONFIG_REVK_SETTINGS_PASSWORD
char* password=NULL;
#endif
char* hostname=NULL;
char* appname=NULL;
char* otahost=NULL;
uint8_t otadays=0;
uint16_t otastart=0;
#ifdef	CONFIG_REVK_WEB_BETA
#endif
revk_settings_blob_t* otacert=NULL;
char* ntphost=NULL;
char* tz=NULL;
uint32_t watchdogtime=0;
#ifdef  CONFIG_IDF_TARGET_ESP32S3
uint16_t usbuptime=0;
#endif
#ifdef  CONFIG_IDF_TARGET_ESP32S3
revk_gpio_t factorygpio={0};
#else
revk_gpio_t factorygpio={0};
#endif
char* topicgroup[2]={0};
char* topiccommand=NULL;
char* topicsetting=NULL;
char* topicstate=NULL;
char* topicevent=NULL;
char* topicinfo=NULL;
char* topicerror=NULL;
char* topicha=NULL;
#ifdef	CONFIG_REVK_BLINK_DEF
revk_gpio_t blink[3]={0};
#endif
#ifdef  CONFIG_REVK_APMODE
#ifdef	CONFIG_REVK_APCONFIG
uint16_t apport=0;
#endif
uint32_t aptime=0;
uint32_t apwait=0;
revk_gpio_t apgpio={0};
#endif
#ifdef  CONFIG_REVK_MQTT
char* mqtthost[CONFIG_REVK_MQTT_CLIENTS]={0};
uint16_t mqttport[CONFIG_REVK_MQTT_CLIENTS]={0};
char* mqttuser[CONFIG_REVK_MQTT_CLIENTS]={0};
char* mqttpass[CONFIG_REVK_MQTT_CLIENTS]={0};
revk_settings_blob_t* mqttcert[CONFIG_REVK_MQTT_CLIENTS]={0};
#endif
revk_settings_blob_t* clientkey=NULL;
revk_settings_blob_t* clientcert=NULL;
#if     defined(CONFIG_REVK_WIFI) || defined(CONFIG_REVK_MESH)
uint16_t wifireset=0;
char* wifissid=NULL;
char* wifipass=NULL;
char* wifiip=NULL;
char* wifigw=NULL;
char* wifidns[3]={0};
uint8_t wifibssid[6]={0};
uint8_t wifichan=0;
uint16_t wifiuptime=0;
#endif
#ifndef	CONFIG_REVK_MESH
char* apssid=NULL;
char* appass=NULL;
uint8_t apmax=0;
char* apip=NULL;
#endif
#ifdef	CONFIG_REVK_MESH
char* nodename=NULL;
uint16_t meshreset=0;
uint8_t meshid[6]={0};
uint8_t meshkey[16]={0};
uint16_t meshwidth=0;
uint16_t meshdepth=0;
uint16_t meshmax=0;
char* meshpass=NULL;
#endif
const char revk_settings_secret[]="✶✶✶✶✶✶✶✶";
