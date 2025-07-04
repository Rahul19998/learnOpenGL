# Makefile to build main.cpp using GLFW and OpenGL, output to build/

# Compiler
CXX = g++

# Source and output
SRC = main.cpp glad.c
TARGET = main
BUILD_DIR = build
OUT = $(BUILD_DIR)/$(TARGET)

# Custom Include directory
INCLUDE_DIR = ./include/

# Compiler flags
CXXFLAGS = -Wall -Wextra -O2 -I$(INCLUDE_DIR)

# Libraries
LIBS = -lglfw -lGL -lX11 -lpthread -lXrandr -lXi -ldl

# Default target
all: $(OUT)

# Rule to build the output
$(OUT): $(SRC)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LIBS)

# Clean build files
clean:
	rm -rf $(BUILD_DIR)

