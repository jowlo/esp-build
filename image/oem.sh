#!/bin/bash
# Setup native ESP8266_RTOS_SDK in addition to ESP_OPEN_RTOS

git clone https://github.com/espressif/ESP8266_RTOS_SDK.git
export SDK_PATH=/home/esp/ESP8266_RTOS_SDK
#export BIN_PATH=/home/esp/esp-open-sdk/xtensa-lx106-elf/bin/
export BIN_PATH=$SDK_PATH/bin
