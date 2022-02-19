# Specify compiler to be used
CXX = g++
CXXFLAGS += -g -std=c++11 -fPIC -march=x86-64

# Specify paths to headers
INCLUDES += -I include

# Specify paths to the libraries
LDFLAGS  += -L /path/to/libs

# Specify the link libraries
LLIBS    += -lfftw3

# ... add other configs ...

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp $(OBJ_DIR)
    $(CXX) -c $(CXXFLAGS) $(INCLUDES) $< -o $@

$(OBJ_DIR)/$(PROGRAM): $(OBJS)
    $(CXX) $(LDFLAGS) $^ $(LLIBS) -o $@

