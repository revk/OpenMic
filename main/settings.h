// Settings
// Generated from:-
// main/settings.def
// components/ESP32-IR/settings.def
// components/ESP32-RevK/settings.def

#include <stdint.h>
#include <stddef.h>
typedef struct revk_settings_s revk_settings_t;
struct revk_settings_s {
 void *ptr;
 const char name[16];
 const char *def;
 const char *flags;
 const char *old;
 const char *unit;
 const char *comment;
 uint16_t size;
 uint8_t group;
 uint8_t bit;
 uint8_t dot:4;
 uint8_t len:4;
 uint8_t type:3;
 uint8_t decimal:5;
 uint8_t digits:5;
 uint8_t array:7;
 uint8_t malloc:1;
 uint8_t revk:1;
 uint8_t live:1;
 uint8_t hide:1;
 uint8_t fix:1;
 uint8_t set:1;
 uint8_t hex:1;
 uint8_t base32:1;
 uint8_t base64:1;
 uint8_t secret:1;
 uint8_t dq:1;
 uint8_t rtc:1;
 uint8_t gpio:1;
};
typedef struct revk_settings_blob_s revk_settings_blob_t;
struct revk_settings_blob_s {
 uint16_t len;
 uint8_t data[];
};
typedef struct revk_gpio_s revk_gpio_t;
struct revk_gpio_s {
 uint16_t num:10;
 uint16_t strong:1;
 uint16_t weak:1;
 uint16_t pulldown:1;
 uint16_t nopull:1;
 uint16_t invert:1;
 uint16_t set:1;
};
enum {
 REVK_SETTINGS_BITFIELD_micstereo,
 REVK_SETTINGS_BITFIELD_micright,
 REVK_SETTINGS_BITFIELD_micbeep,
 REVK_SETTINGS_BITFIELD_sddelete,
 REVK_SETTINGS_BITFIELD_autousb,
 REVK_SETTINGS_BITFIELD_sipdebug,
 REVK_SETTINGS_BITFIELD_wifilock,
 REVK_SETTINGS_BITFIELD_wifirecord,
 REVK_SETTINGS_BITFIELD_wifiusb,
 REVK_SETTINGS_BITFIELD_haenable,
 REVK_SETTINGS_BITFIELD_irlog,
 REVK_SETTINGS_BITFIELD_irdebug,
#ifdef	CONFIG_REVK_SETTINGS_PASSWORD
#endif
#ifdef  CONFIG_MDNS_MAX_INTERFACES
#else
#endif
 REVK_SETTINGS_BITFIELD_otaauto,
#ifdef	CONFIG_REVK_WEB_BETA
 REVK_SETTINGS_BITFIELD_otabeta,
#endif
 REVK_SETTINGS_BITFIELD_dark,
#ifdef  CONFIG_IDF_TARGET_ESP32S3
#endif
#ifdef  CONFIG_IDF_TARGET_ESP32S3
#else
#endif
 REVK_SETTINGS_BITFIELD_prefixapp,
 REVK_SETTINGS_BITFIELD_prefixhost,
#ifdef	CONFIG_REVK_BLINK_DEF
#endif
#ifdef  CONFIG_REVK_APMODE
#ifdef	CONFIG_REVK_APCONFIG
#endif
#endif
#ifdef  CONFIG_REVK_MQTT
#endif
#if     defined(CONFIG_REVK_WIFI) || defined(CONFIG_REVK_MESH)
 REVK_SETTINGS_BITFIELD_wifips,
 REVK_SETTINGS_BITFIELD_wifimaxps,
#endif
#ifndef	CONFIG_REVK_MESH
 REVK_SETTINGS_BITFIELD_aplr,
 REVK_SETTINGS_BITFIELD_aphide,
#endif
#ifdef	CONFIG_REVK_MESH
 REVK_SETTINGS_BITFIELD_meshlr,
 REVK_SETTINGS_BITFIELD_meshroot,
#endif
};
typedef struct revk_settings_bits_s revk_settings_bits_t;
struct revk_settings_bits_s {
 uint8_t micstereo:1;	// Microphone Stereo
 uint8_t micright:1;	// Microphone use right channel
 uint8_t micbeep:1;	// Add sync beep and red LED on start of recording
 uint8_t sddelete:1;	// Auto delete old files if space needed for new file
 uint8_t autousb:1;	// Auto off only if USB disconnected
 uint8_t sipdebug:1;	// SIP debug messages to serial log
 uint8_t wifilock:1;	// Lock down settings/AP mode when SD card inserted
 uint8_t wifirecord:1;	// WiFi off during recording (unless started via HA)
 uint8_t wifiusb:1;	// WiFi off when not on USB power
 uint8_t haenable:1;	// Enable Home Assistant
 uint8_t irlog:1;	// IR logging to MQTT
 uint8_t irdebug:1;	// IT logging includes timings
#ifdef	CONFIG_REVK_SETTINGS_PASSWORD
#endif
#ifdef  CONFIG_MDNS_MAX_INTERFACES
#else
#endif
 uint8_t otaauto:1;	// OTA auto upgrade
#ifdef	CONFIG_REVK_WEB_BETA
 uint8_t otabeta:1;	// OTA from beta release
#endif
 uint8_t dark:1;	// Default LED off
#ifdef  CONFIG_IDF_TARGET_ESP32S3
#endif
#ifdef  CONFIG_IDF_TARGET_ESP32S3
#else
#endif
 uint8_t prefixapp:1;	// MQTT use appname/ in front of hostname in topic
 uint8_t prefixhost:1;	// MQTT use (appname/)hostname/topic instead of topic/(appname/)hostname
#ifdef	CONFIG_REVK_BLINK_DEF
#endif
#ifdef  CONFIG_REVK_APMODE
#ifdef	CONFIG_REVK_APCONFIG
#endif
#endif
#ifdef  CONFIG_REVK_MQTT
#endif
#if     defined(CONFIG_REVK_WIFI) || defined(CONFIG_REVK_MESH)
 uint8_t wifips:1;	// WiFi power save
 uint8_t wifimaxps:1;	// WiFi power save (max)
#endif
#ifndef	CONFIG_REVK_MESH
 uint8_t aplr:1;	// AP LR mode
 uint8_t aphide:1;	// AP hide SSID
#endif
#ifdef	CONFIG_REVK_MESH
 uint8_t meshlr:1;	// Mesh use LR mode
 uint8_t meshroot:1;	// This is preferred mesh root
#endif
};
extern revk_gpio_t spkpwr;	// Speaker power on
extern revk_gpio_t spklrc;	// Speaker LR clock
extern revk_gpio_t spkbclk;	// Speaker Bit clock
extern revk_gpio_t spkdata;	// Speaker Data
extern revk_gpio_t micdata;	// Microphone Data / SD
extern revk_gpio_t micclock;	// Microphone Clock / SCK
extern revk_gpio_t micws;	// Microphone WS (not set for PDM)
extern uint32_t micrate;	// Microphone Input rate (when not SIP)
extern uint8_t micgain;	// Microphone Multiply input (set 0 for 24 bit raw)
#define	micstereo	revk_settings_bits.micstereo
#define	micright	revk_settings_bits.micright
#define	micbeep	revk_settings_bits.micbeep
extern revk_gpio_t sddat2;	// MicroSD DAT2
extern revk_gpio_t sddat3;	// MicroSD DAT3
extern revk_gpio_t sdcmd;	// MicroSD CMD
extern revk_gpio_t sdclk;	// MicroSD CLK
extern revk_gpio_t sddat0;	// MicroSD DAT0
extern revk_gpio_t sddat1;	// MicroSD DAT1
extern revk_gpio_t sdcd;	// MicroSD CD
extern uint32_t sdrectime;	// Max record time per whole file
extern uint32_t sdsynctime;	// Max record time per file sync
extern char* sdupload;	// Where to post, then delete, files on power off
#define	sddelete	revk_settings_bits.sddelete
extern uint32_t autooff;	// Auto power off if idle
#define	autousb	revk_settings_bits.autousb
extern revk_gpio_t button;	// Button
extern revk_gpio_t charging;	// Charging status
extern revk_gpio_t vbus;	// USB power status
extern revk_gpio_t irgpio;	// IR receiver
extern revk_gpio_t rgbstatus;	// Status LED
extern revk_gpio_t rgbled;	// Mic/record LED
extern revk_gpio_t rgbpwr;	// LED power control
extern uint32_t morsefreq;	// Morse tone frequency
extern uint8_t morselevel;	// Morse audio level
extern uint8_t morsewpm;	// Morse basic rate
extern uint8_t morsefwpm;	// Morse Farnsworth rate
extern char* morsestart;	// Morse initial message on power on
extern uint8_t dtmflevel;	// DTMF tone level
extern uint8_t dtmftone;	// DTMF tone time
extern uint8_t dtmfgap;	// DTMF gap time
extern char* siphost;	// SIP server hostname
extern char* sipuser;	// SIP registration username
extern char* sippass;	// SIP registration password
extern char* sipoutgoing;	// SIP target or number for outgoing call
#define	sipdebug	revk_settings_bits.sipdebug
#define	wifilock	revk_settings_bits.wifilock
#define	wifirecord	revk_settings_bits.wifirecord
#define	wifiusb	revk_settings_bits.wifiusb
#define	haenable	revk_settings_bits.haenable
#define	irlog	revk_settings_bits.irlog
#define	irdebug	revk_settings_bits.irdebug
#ifdef	CONFIG_REVK_SETTINGS_PASSWORD
extern char* password;	// Settings password<br>(not sent securely so use with care)
#endif
#ifdef  CONFIG_MDNS_MAX_INTERFACES
extern char* hostname;	// Hostname[.local]<br>(used in DHCP and MQTT)
#else
extern char* hostname;	// Host name<br>(used in DHCP and MQTT)
#endif
extern char* appname;	// Application name
extern char* otahost;	// OTA hostname
extern uint8_t otadays;	// OTA auto load (days)
extern uint16_t otastart;	// OTA check after startup (min seconds)
#define	otaauto	revk_settings_bits.otaauto
#ifdef	CONFIG_REVK_WEB_BETA
#define	otabeta	revk_settings_bits.otabeta
#endif
extern revk_settings_blob_t* otacert;	// OTA cert of otahost
#define	dark	revk_settings_bits.dark
extern char* ntphost;	// NTP host
extern char* tz;	// Timezone (<a href='https://gist.github.com/alwynallan/24d96091655391107939' target=_blank>info</a>)
extern uint32_t watchdogtime;	// Watchdog (seconds)
#ifdef  CONFIG_IDF_TARGET_ESP32S3
extern uint16_t usbuptime;	// USB  turns off after this many seconds
#endif
#ifdef  CONFIG_IDF_TARGET_ESP32S3
extern revk_gpio_t factorygpio;	// Factory reset GPIO (press 3 times)
#else
extern revk_gpio_t factorygpio;	// Factory reset GPIO (press 3 times)
#endif
extern char* topicgroup[2];	// MQTT Alternative hostname accepted for commands
extern char* topiccommand;	// MQTT Topic for commands
extern char* topicsetting;	// MQTT Topic for settings
extern char* topicstate;	// MQTT Topic for state
extern char* topicevent;	// MQTT Topic for event
extern char* topicinfo;	// MQTT Topic for info
extern char* topicerror;	// MQTT Topic for error
extern char* topicha;	// MQTT Topic for homeassistant
#define	prefixapp	revk_settings_bits.prefixapp
#define	prefixhost	revk_settings_bits.prefixhost
#ifdef	CONFIG_REVK_BLINK_DEF
extern revk_gpio_t blink[3];	// R, G, B LED array (set all the same for WS2812 LED)
#endif
#ifdef  CONFIG_REVK_APMODE
#ifdef	CONFIG_REVK_APCONFIG
extern uint16_t apport;	// TCP port for config web pages on AP
#endif
extern uint32_t aptime;	// Limit AP to time (seconds)
extern uint32_t apwait;	// Wait off line before starting AP (seconds)
extern revk_gpio_t apgpio;	// Start AP on GPIO
#endif
#ifdef  CONFIG_REVK_MQTT
extern char* mqtthost[CONFIG_REVK_MQTT_CLIENTS];	// MQTT hostname
extern uint16_t mqttport[CONFIG_REVK_MQTT_CLIENTS];	// MQTT port
extern char* mqttuser[CONFIG_REVK_MQTT_CLIENTS];	// MQTT username
extern char* mqttpass[CONFIG_REVK_MQTT_CLIENTS];	// MQTT password
extern revk_settings_blob_t* mqttcert[CONFIG_REVK_MQTT_CLIENTS];	// MQTT CA certificate
#endif
extern revk_settings_blob_t* clientkey;	// Client Key (OTA and MQTT TLS)
extern revk_settings_blob_t* clientcert;	// Client certificate (OTA and MQTT TLS)
#if     defined(CONFIG_REVK_WIFI) || defined(CONFIG_REVK_MESH)
extern uint16_t wifireset;	// Restart if WiFi off for this long (seconds)
extern char* wifissid;	// WiFI SSID (name)
extern char* wifipass;	// WiFi password
extern char* wifiip;	// WiFi Fixed IP
extern char* wifigw;	// WiFi Fixed gateway
extern char* wifidns[3];	// WiFi fixed DNS
extern uint8_t wifibssid[6];	// WiFI BSSID
extern uint8_t wifichan;	// WiFI channel
extern uint16_t wifiuptime;	// WiFI turns off after this many seconds
#define	wifips	revk_settings_bits.wifips
#define	wifimaxps	revk_settings_bits.wifimaxps
#endif
#ifndef	CONFIG_REVK_MESH
extern char* apssid;	// AP mode SSID (name)
extern char* appass;	// AP mode password
extern uint8_t apmax;	// AP max clients
extern char* apip;	// AP mode block
#define	aplr	revk_settings_bits.aplr
#define	aphide	revk_settings_bits.aphide
#endif
#ifdef	CONFIG_REVK_MESH
extern char* nodename;	// Mesh node name
extern uint16_t meshreset;	// Reset if mesh off for this long (seconds)
extern uint8_t meshid[6];	// Mesh ID (hex)
extern uint8_t meshkey[16];	// Mesh key
extern uint16_t meshwidth;	// Mesh width
extern uint16_t meshdepth;	// Mesh depth
extern uint16_t meshmax;	// Mesh max devices
extern char* meshpass;	// Mesh AP password
#define	meshlr	revk_settings_bits.meshlr
#define	meshroot	revk_settings_bits.meshroot
#endif
extern revk_settings_bits_t revk_settings_bits;
enum {
 REVK_SETTINGS_UNSIGNED,
 REVK_SETTINGS_BIT,
 REVK_SETTINGS_BLOB,
 REVK_SETTINGS_STRING,
 REVK_SETTINGS_OCTET,
};
#define REVK_SETTINGS_SPKPWR
#define REVK_SETTINGS_SPKLRC
#define REVK_SETTINGS_SPKBCLK
#define REVK_SETTINGS_SPKDATA
#define REVK_SETTINGS_MICDATA
#define REVK_SETTINGS_MICCLOCK
#define REVK_SETTINGS_MICWS
#define REVK_SETTINGS_MICRATE
#define REVK_SETTINGS_MICGAIN
#define REVK_SETTINGS_MICSTEREO
#define REVK_SETTINGS_MICRIGHT
#define REVK_SETTINGS_MICBEEP
#define REVK_SETTINGS_SDDAT2
#define REVK_SETTINGS_SDDAT3
#define REVK_SETTINGS_SDCMD
#define REVK_SETTINGS_SDCLK
#define REVK_SETTINGS_SDDAT0
#define REVK_SETTINGS_SDDAT1
#define REVK_SETTINGS_SDCD
#define REVK_SETTINGS_SDRECTIME
#define REVK_SETTINGS_SDSYNCTIME
#define REVK_SETTINGS_SDUPLOAD
#define REVK_SETTINGS_SDDELETE
#define REVK_SETTINGS_AUTOOFF
#define REVK_SETTINGS_AUTOUSB
#define REVK_SETTINGS_BUTTON
#define REVK_SETTINGS_CHARGING
#define REVK_SETTINGS_VBUS
#define REVK_SETTINGS_IRGPIO
#define REVK_SETTINGS_RGBSTATUS
#define REVK_SETTINGS_RGBLED
#define REVK_SETTINGS_RGBPWR
#define REVK_SETTINGS_MORSEFREQ
#define REVK_SETTINGS_MORSELEVEL
#define REVK_SETTINGS_MORSEWPM
#define REVK_SETTINGS_MORSEFWPM
#define REVK_SETTINGS_MORSESTART
#define REVK_SETTINGS_DTMFLEVEL
#define REVK_SETTINGS_DTMFTONE
#define REVK_SETTINGS_DTMFGAP
#define REVK_SETTINGS_SIPHOST
#define REVK_SETTINGS_SIPUSER
#define REVK_SETTINGS_SIPPASS
#define REVK_SETTINGS_SIPOUTGOING
#define REVK_SETTINGS_SIPDEBUG
#define REVK_SETTINGS_WIFILOCK
#define REVK_SETTINGS_WIFIRECORD
#define REVK_SETTINGS_WIFIUSB
#define REVK_SETTINGS_HAENABLE
#define REVK_SETTINGS_IRLOG
#define REVK_SETTINGS_IRDEBUG
#ifdef	CONFIG_REVK_SETTINGS_PASSWORD
#define REVK_SETTINGS_PASSWORD
#endif
#ifdef  CONFIG_MDNS_MAX_INTERFACES
#define REVK_SETTINGS_HOSTNAME
#else
#define REVK_SETTINGS_HOSTNAME
#endif
#define REVK_SETTINGS_APPNAME
#define REVK_SETTINGS_OTAHOST
#define REVK_SETTINGS_OTADAYS
#define REVK_SETTINGS_OTASTART
#define REVK_SETTINGS_OTAAUTO
#ifdef	CONFIG_REVK_WEB_BETA
#define REVK_SETTINGS_OTABETA
#endif
#define REVK_SETTINGS_OTACERT
#define REVK_SETTINGS_DARK
#define REVK_SETTINGS_NTPHOST
#define REVK_SETTINGS_TZ
#define REVK_SETTINGS_WATCHDOGTIME
#ifdef  CONFIG_IDF_TARGET_ESP32S3
#define REVK_SETTINGS_USBUPTIME
#endif
#ifdef  CONFIG_IDF_TARGET_ESP32S3
#define REVK_SETTINGS_FACTORYGPIO
#else
#define REVK_SETTINGS_FACTORYGPIO
#endif
#define REVK_SETTINGS_TOPICGROUP
#define REVK_SETTINGS_TOPICCOMMAND
#define REVK_SETTINGS_TOPICSETTING
#define REVK_SETTINGS_TOPICSTATE
#define REVK_SETTINGS_TOPICEVENT
#define REVK_SETTINGS_TOPICINFO
#define REVK_SETTINGS_TOPICERROR
#define REVK_SETTINGS_TOPICHA
#define REVK_SETTINGS_PREFIXAPP
#define REVK_SETTINGS_PREFIXHOST
#ifdef	CONFIG_REVK_BLINK_DEF
#define REVK_SETTINGS_BLINK
#endif
#ifdef  CONFIG_REVK_APMODE
#ifdef	CONFIG_REVK_APCONFIG
#define REVK_SETTINGS_APPORT
#endif
#define REVK_SETTINGS_APTIME
#define REVK_SETTINGS_APWAIT
#define REVK_SETTINGS_APGPIO
#endif
#ifdef  CONFIG_REVK_MQTT
#define REVK_SETTINGS_MQTTHOST
#define REVK_SETTINGS_MQTTPORT
#define REVK_SETTINGS_MQTTUSER
#define REVK_SETTINGS_MQTTPASS
#define REVK_SETTINGS_MQTTCERT
#endif
#define REVK_SETTINGS_CLIENTKEY
#define REVK_SETTINGS_CLIENTCERT
#if     defined(CONFIG_REVK_WIFI) || defined(CONFIG_REVK_MESH)
#define REVK_SETTINGS_WIFIRESET
#define REVK_SETTINGS_WIFISSID
#define REVK_SETTINGS_WIFIPASS
#define REVK_SETTINGS_WIFIIP
#define REVK_SETTINGS_WIFIGW
#define REVK_SETTINGS_WIFIDNS
#define REVK_SETTINGS_WIFIBSSID
#define REVK_SETTINGS_WIFICHAN
#define REVK_SETTINGS_WIFIUPTIME
#define REVK_SETTINGS_WIFIPS
#define REVK_SETTINGS_WIFIMAXPS
#endif
#ifndef	CONFIG_REVK_MESH
#define REVK_SETTINGS_APSSID
#define REVK_SETTINGS_APPASS
#define REVK_SETTINGS_APMAX
#define REVK_SETTINGS_APIP
#define REVK_SETTINGS_APLR
#define REVK_SETTINGS_APHIDE
#endif
#ifdef	CONFIG_REVK_MESH
#define REVK_SETTINGS_NODENAME
#define REVK_SETTINGS_MESHRESET
#define REVK_SETTINGS_MESHID
#define REVK_SETTINGS_MESHKEY
#define REVK_SETTINGS_MESHWIDTH
#define REVK_SETTINGS_MESHDEPTH
#define REVK_SETTINGS_MESHMAX
#define REVK_SETTINGS_MESHPASS
#define REVK_SETTINGS_MESHLR
#define REVK_SETTINGS_MESHROOT
#endif
#define	REVK_SETTINGS_HAS_OLD
#define	REVK_SETTINGS_HAS_UNIT
#define	REVK_SETTINGS_HAS_COMMENT
#define	REVK_SETTINGS_HAS_GPIO
#define	REVK_SETTINGS_HAS_NUMERIC
#define	REVK_SETTINGS_HAS_UNSIGNED
#define	REVK_SETTINGS_HAS_BIT
#define	REVK_SETTINGS_HAS_BLOB
#define	REVK_SETTINGS_HAS_STRING
#define	REVK_SETTINGS_HAS_OCTET
#define	dtmftone_scale	1000
#define	dtmfgap_scale	1000
typedef uint8_t revk_setting_bits_t[15];
typedef uint8_t revk_setting_group_t[3];
extern const char revk_settings_secret[];
