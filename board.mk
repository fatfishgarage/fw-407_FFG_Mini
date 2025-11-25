include $(BOARD_DIR)/firmware/firmware.mk

BOARDINC += $(BOARD_DIR)/generated/controllers/generated

# defines SHORT_BOARD_NAME
include $(BOARD_DIR)/meta-info.env

# this would save some flash while being unable to update WBO controller firmware
DDEFS += -DEFI_WIDEBAND_FIRMWARE_UPDATE=FALSE

# reduce memory usage monitoring
DDEFS += -DRAM_UNUSED_SIZE=100

# assign critical LED to a non-existent pin if you do not have it on your board
# good old PD14 is still the default value
# DDEFS += -DLED_CRITICAL_ERROR_BRAIN_PIN=Gpio::I15

# List of all the board related files.
BOARDCPPSRC = $(BOARD_DIR)/board_configuration.cpp

# MCU defines
DDEFS += -DSTM32F407xx

BUNDLE_OPENOCD = yes

# User can configure LIN/K-line interface
#DDEFS += -DEFI_KLINE=TRUE
#DDEFS += -DKLINE_SERIAL_DEVICE_RX=C11 -DKLINE_SERIAL_DEVICE_TX=C10
#DDEFS += -DKLINE_SERIAL_DEVICE=SD3

# DAC channel1 PA4
# DAC channel2 PA5
#DDEFS += -DEFI_DAC=TRUE -DHAL_USE_DAC=TRUE -DSTM32_DAC_USE_DAC1_CH1=TRUE -DSTM32_DAC_USE_DAC1_CH2=TRUE

#DDEFS += -DBOARD_TLE9104_COUNT=2
# EGT chip
DDEFS += -DEFI_MAX_31855=TRUE

# We are running on Frankenso hardware!
DDEFS += -DHW_FRANKENSO=1
DDEFS += $(DEFAULT_ENGINE_TYPE)

DDEFS += -DSTM32_ADC_USE_ADC3=TRUE
# todo: make knock pin software-selectable?
DDEFS += -DEFI_SOFTWARE_KNOCK=TRUE -DSTM32_ADC_USE_ADC3=TRUE
DDEFS += -DSTATIC_BOARD_ID=STATIC_BOARD_ID_FFG_BIG_BOARD

# TS_SECONDARY_UxART_PORT 1
DDEFS += -DSTM32_SERIAL_USE_USART1=TRUE -DSTM32_SERIAL_USART1_PRIORITY=6
DDEFS += -DTS_SECONDARY_UxART_PORT=SD1 -DEFI_TS_SECONDARY_IS_SERIAL=TRUE

# TS_SECONDARY_UxART_PORT 3
# DDEFS += -DSTM32_SERIAL_USE_USART3=TRUE -DSTM32_SERIAL_USART3_PRIORITY=6
# DDEFS += -DTS_SECONDARY_UxART_PORT=SD3 -DEFI_TS_SECONDARY_IS_SERIAL=TRUE

#DDEFS += -DEFI_WS2812=TRUE

ifndef IS_RE_BOOTLOADER
#DDEFS += -DHAL_USE_EEPROM=TRUE -DSTM32_I2C_USE_I2C3=TRUE
endif

# EGT chip
#un-comment to enable
#DDEFS += -DEFI_MAX_31855=TRUE

# This board has some Accelerometer onboard
# DDEFS += -DEFI_ONBOARD_MEMS=TRUE

# Original STM32F4DISCOVERY has LIS302DL
# EFI_ONBOARD_MEMS_LIS302DL = yes
# DDEFS += -DLIS302DL_USE_SPI=TRUE -DLIS302DL_USE_I2C=FALSE -DLIS302DL_SHARED_SPI=TRUE

# Later versions of STM32F4DISCOVERY has LIS3DSH
# EFI_ONBOARD_MEMS_LIS3DSH = yes
# DDEFS += -DLIS3DSH_USE_SPI=TRUE -DLIS3DSH_USE_I2C=FASLE -DLIS3DSH_SHARED_SPI=TRUE

# And some custom board have LIS2DW12TR
# EFI_ONBOARD_MEMS_LIS2DW12 = yes
# DDEFS += -DLIS2DW12_USE_SPI=TRUE -DLIS2DW12_SHARED_SPI=TRUE

#see main repo for details on this any many other optional subsystems. We have too many, one has to choose what fits into his choice of stm32
#DDEFS += -DEFI_ONBOARD_MEMS=TRUE
