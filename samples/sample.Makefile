# Variable definitions
FOO = "Lorem Ipsum"
BAR = 123
BAZ = 3.14
FOOBAR = foobar

# Special variables
SHELL = /bin/bash
CC = gcc
CFLAGS = -Wall -g

# Phony targets
.PHONY: all clean

# Default target
all: $(FOOBAR)

# Target with prerequisites and recipe
$(FOOBAR): $(FOOBAR).o main.o
	$(CC) $(CFLAGS) -o $(FOOBAR) $(FOOBAR).o main.o

# Pattern rule for object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Using built-in functions
FILES := $(wildcard *.c)
OBJS := $(FILES:.c=.o)

# Conditional example
ifeq ($(BAR), 123)
MESSAGE = "BAR is 123"
else
MESSAGE = "BAR is not 123"
endif

# Print variables and message
print-vars:
	@echo FOO = $(FOO)
	@echo BAR = $(BAR)
	@echo BAZ = $(BAZ)
	@echo MESSAGE = $(MESSAGE)

# Running shell commands
run:
	@echo "Running $(FOOBAR)..."
	./$(FOOBAR)

# Cleaning up generated files
clean:
	@echo "Cleaning up..."
	rm -f $(FOOBAR) *.o

# Define a macro for common shell commands
define print_foobar
	@echo "FOO: $(FOO)"
	@echo "BAR: $(BAR)"
	@echo "BAZ: $(BAZ)"
endef

# Use the macro
print-foobar:
	$(call print_foobar)

# Using loops
loops:
	@for i in 1 2 3 4 5; do \
		echo "Iteration $$i"; \
	done

# Using conditional execution
conditional-exec:
	@if [ "$(BAR)" -eq "123" ]; then \
		echo "BAR is 123"; \
	else \
		echo "BAR is not 123"; \
	fi

