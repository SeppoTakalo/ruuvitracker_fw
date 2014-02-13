# List of all the board related files.
BOARDSRC = boards/ruuviC2/board.c

# Required include directories
BOARDINC = boards/ruuviC2

USE_FPU = yes

.DEFAULT_GOAL := all
.PHONY: flash
flash: all
	dfu-util --device 0483:df11 -c 0 -i 0 -a 0 -D build/$(PROJECT).bin -s 0x08000000:leave
