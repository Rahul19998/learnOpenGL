# Makefile to build main.cpp using GLFW and OpenGL, output to build/

# Compiler
CXX = g++

# Source and output
SRC = main.cpp
TARGET = main
BUILD_DIR = build
OUT = $(BUILD_DIR)/$(TARGET)

# Compiler flags
CXXFLAGS = -Wall -Wextra -O2

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

