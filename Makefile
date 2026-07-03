CC = gcc
CFLAGS = -Wall -Wextra -Werror -g -Iinclude
BIN_DIR = bin

all: $(BIN_DIR)/semaphore_lab

check: all
	./scripts/check.sh

grade: all
	./scripts/grade.sh

$(BIN_DIR)/semaphore_lab: src/semaphore_lab.c include/semaphore_lab.h
	$(CC) $(CFLAGS) -pthread $< -o $@

clean:
	rm -f $(BIN_DIR)/semaphore_lab

.PHONY: all check grade clean