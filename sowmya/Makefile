CC =arm-none-eabi-gcc
MACH=cortex-m4
CFLAGS= -c -mcpu=$(MACH) -mthumb -std=gnu11 -o0

swap.o:swap.c
	$(CC) $(CFLAGS) -o $@ $^
