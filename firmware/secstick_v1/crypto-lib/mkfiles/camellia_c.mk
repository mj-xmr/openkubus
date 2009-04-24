# Makefile for camellia
ALGO_NAME := CAMELLIA_C

# comment out the following line for removement of serpent from the build process
BLOCK_CIPHERS += $(ALGO_NAME)

# main-camellia-test.o debug.o uart.o hexdigit_tab.o serial-tools.o camellia.o camellia-asm.o
$(ALGO_NAME)_OBJ      := camellia_C.o
$(ALGO_NAME)_TEST_BIN := main-camellia-test.o debug.o uart.o hexdigit_tab.o serial-tools.o \
                         nessie_bc_test.o \
			 nessie_common.o cli.o string-extras.o performance_test.o
$(ALGO_NAME)_NESSIE_TEST      := "nessie"
$(ALGO_NAME)_PERFORMANCE_TEST := "performance"

