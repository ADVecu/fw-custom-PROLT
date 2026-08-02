BOARDCPPSRC =  $(BOARD_DIR)/board_configuration.cpp \


BOARDINC += $(BOARD_DIR)/generated/controllers/generated

# defines SHORT_BOARD_NAME
include $(BOARD_DIR)/meta-info.env

DDEFS += -DEFI_ELECTRONIC_THROTTLE_BODY=FALSE
DDEFS += -DEFI_TCU=FALSE
DDEFS += -DEEFI_STORAGE_MFS=TRUE
DDEFS += -DADC_MUX_PIN=Gpio::F2
DDEFS += -DEFI_SOFTWARE_KNOCK=TRUE -DSTM32_ADC_USE_ADC3=TRUE

# this is usually used by Bluetooth
DDEFS += $(PRIMARY_COMMUNICATION_PORT_USART2)

# this includes knock and mux control settings
include $(BOARDS_DIR)/hellen/hellen-common100.mk
