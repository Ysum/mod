#
# Copyright (c) 2011 Atmel Corporation. All rights reserved.
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop
#

# Path to top level ASF directory relative to this project directory.
PRJ_PATH = ../../../../../../../../..

# Target CPU architecture: cortex-m3, cortex-m4
ARCH = cortex-m3

# Target part: none, sam3n4 or sam4l4aa
PART = sam3u4e

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET_FLASH = example_hidkbd_msc_flash.elf
TARGET_SRAM = example_hidkbd_msc_sram.elf

# List of C source files.
CSRCS = \
       common/components/memory/virtual_mem/virtual_mem.c \
       common/services/clock/sam3u/sysclk.c               \
       common/services/sleepmgr/sam/sleepmgr.c            \
       common/services/storage/ctrl_access/ctrl_access.c  \
       common/services/usb/class/composite/device/example3/main.c \
       common/services/usb/class/composite/device/example3/memories_initialization_sam.c \
       common/services/usb/class/composite/device/example3/sam3u4e_sam3u_ek/ui.c \
       common/services/usb/class/composite/device/udi_composite_desc.c \
       common/services/usb/class/hid/device/kbd/udi_hid_kbd.c \
       common/services/usb/class/hid/device/udi_hid.c     \
       common/services/usb/class/msc/device/udi_msc.c     \
       common/services/usb/udc/udc.c                      \
       common/utils/interrupt/interrupt_sam_nvic.c        \
       sam/boards/sam3u_ek/init.c                         \
       sam/boards/sam3u_ek/led.c                          \
       sam/drivers/ebi/smc/smc.c                          \
       sam/drivers/pio/pio.c                              \
       sam/drivers/pio/pio_handler.c                      \
       sam/drivers/pmc/pmc.c                              \
       sam/drivers/pmc/sleep.c                            \
       sam/drivers/udphs/udphs_device.c                   \
       sam/utils/cmsis/sam3u/source/templates/exceptions.c \
       sam/utils/cmsis/sam3u/source/templates/gcc/startup_sam3u.c \
       sam/utils/cmsis/sam3u/source/templates/system_sam3u.c \
       sam/utils/syscalls/gcc/syscalls.c

# List of assembler source files.
ASSRCS = 

# List of include paths.
INC_PATH = \
       common/boards                                      \
       common/components/memory/virtual_mem               \
       common/services/clock                              \
       common/services/gpio                               \
       common/services/ioport                             \
       common/services/sleepmgr                           \
       common/services/storage/ctrl_access                \
       common/services/usb                                \
       common/services/usb/class/composite/device         \
       common/services/usb/class/composite/device/example3 \
       common/services/usb/class/composite/device/example3/sam3u4e_sam3u_ek \
       common/services/usb/class/hid                      \
       common/services/usb/class/hid/device               \
       common/services/usb/class/hid/device/kbd           \
       common/services/usb/class/msc                      \
       common/services/usb/class/msc/device               \
       common/services/usb/udc                            \
       common/utils                                       \
       sam/boards                                         \
       sam/boards/sam3u_ek                                \
       sam/drivers/ebi/smc                                \
       sam/drivers/pio                                    \
       sam/drivers/pmc                                    \
       sam/drivers/udphs                                  \
       sam/utils                                          \
       sam/utils/cmsis/sam3u/include                      \
       sam/utils/cmsis/sam3u/source/templates             \
       sam/utils/header_files                             \
       sam/utils/preprocessor                             \
       thirdparty/CMSIS/Include                           \
       thirdparty/CMSIS/Lib/GCC \
       common/services/usb/class/composite/device/example3/sam3u4e_sam3u_ek/gcc

# Additional search paths for libraries.
LIB_PATH =  \
       thirdparty/CMSIS/Lib/GCC                          

# List of libraries to use during linking.
LIBS =  \
       arm_cortexM3l_math                                 \
       m                                                 

# Path relative to top level directory pointing to a linker script.
LINKER_SCRIPT_FLASH = sam/utils/linker_scripts/sam3u/sam3u4/gcc/flash.ld
LINKER_SCRIPT_SRAM  = sam/utils/linker_scripts/sam3u/sam3u4/gcc/sram.ld

# Path relative to top level directory pointing to a linker script.
DEBUG_SCRIPT_FLASH = sam/boards/sam3u_ek/debug_scripts/gcc/sam3u_ek_flash.gdb
DEBUG_SCRIPT_SRAM  = sam/boards/sam3u_ek/debug_scripts/gcc/sam3u_ek_sram.gdb

# Project type parameter: all, sram or flash
PROJECT_TYPE        = all

# Additional options for debugging. By default the common Makefile.in will
# add -g3.
DBGFLAGS = 

# Application optimization used during compilation and linking:
# -O0, -O1, -O2, -O3 or -Os
OPTIMIZATION = -O1

# Extra flags to use when archiving.
ARFLAGS = 

# Extra flags to use when assembling.
ASFLAGS = 

# Extra flags to use when compiling.
CFLAGS = 

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
       -D ACCESS_USB_ENABLED                              \
       -D ARM_MATH_CM3=true                               \
       -D BOARD=SAM3U_EK                                  \
       -D UDD_ENABLE                                      \
       -D VIRTUAL_MEMORY_ENABLE                           \
       -D __SAM3U4E__                                     \
       -D printf=iprintf                                  \
       -D scanf=iscanf

# Extra flags to use when linking
LDFLAGS = \

# Pre- and post-build commands
PREBUILD_CMD = 
POSTBUILD_CMD = 