.PHONY: all run clean
# Compilation configuration
SRC_FILE = server.cpp
COMPILER_FLAGS = -Wall -g -O3
COMPILER = g++
OUTPUT_FILE = main
BUILD_LIB = .                	

all: build ##@Build Build sources

build: ##@Build Compile using gcc
	$(COMPILER) $(SRC_FILE) $(COMPILER_FLAGS) -o $(OUTPUT_FILE)

run: ##@Run Run compiled application
	./$(OUTPUT_FILE)

clean: ##@Build Clean up
	rm -f $(OUTPUT_FILE)