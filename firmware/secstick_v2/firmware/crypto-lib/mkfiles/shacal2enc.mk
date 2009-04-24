# Makefile for present
ALGO_NAME := SHACAL2ENC

# comment out the following line for removement of present from the build process
BLOCK_CIPHERS += $(ALGO_NAME)


$(ALGO_NAME)_OBJ      := shacal2_enc.o sha256-asm.o
$(ALGO_NAME)_TEST_BIN := main-shacal2_enc-test.o debug.o uart.o hexdigit_tab.o serial-tools.o \
                         nessie_bc_test.o nessie_common.o cli.o string-extras.o performance_test.o 
$(ALGO_NAME)_NESSIE_TEST      := "nessie"
$(ALGO_NAME)_PERFORMANCE_TEST := "performance"

