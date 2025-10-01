-include Makefile.local

CFLAGS := -Wall -Wextra -g
CFLAGS += -I./include/
LDFLAGS := -Wall -std=c99  -g

BIN_DIR := bin
SRC_DIR := src

OBJS =
OBJS += $(sort $(patsubst %.c,%.o,$(wildcard $(SRC_DIR)/*.c)))

.PHONY: all clean

all: suka peka

clean:
	/bin/rm --force $(OBJS)
	/bin/rm --force $(BIN_DIR)/suka
	ndk-build clean

suka: $(OBJS)
	$(CC) -o $(BIN_DIR)/$@ $^ $(LDFLAGS) $(EXTRA_LDFLAGS)
peka: $(OBJS)
	ndk-build -j$(shell nproc)
%.o: %.c
	$(CC) -o $@ $^ -c $(CFLAGS) $(EXTRA_CFLAGS)
