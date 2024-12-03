.PHONY: all run clean
# Compilation configuration
SRC_FILE = main.pyx          	 # Source file for Cython
EXTENSION_MODULE = main      	 # Name of the extension module
PYTHON_VERSION = 3.12        	 # Python version to use
COMPILER_FLAGS = -Wall -g -O3    # Compiler flags for warnings and debugging
BUILD_LIB = .                	 # Directory for build output

all: cythonize build gcc ##@Build Build sources

cythonize:##@Build Cythonize source
	cython $(SRC_FILE)

build: ##@Build Packaging source
	python$(PYTHON_VERSION) setup.py build_ext --build-lib=$(BUILD_LIB)

gcc: ##@Build Compile using gcc
	gcc -o app.o builder.c -I/usr/include/python$(PYTHON_VERSION) -lpython$(PYTHON_VERSION) $(COMPILER_FLAGS)

run: ##@Run Run compiled application
	PYTHONPATH=`pwd` ./app.o

clean: ##@Build Clean up
	rm -f $(EXTENSION_MODULE).c
	rm -f $(EXTENSION_MODULE).o
	rm -f app.o
	rm -rf build