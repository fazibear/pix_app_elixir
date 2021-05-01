CFLAGS = -g -I$(ERL_EI_INCLUDE_DIR)
LDFLAGS = -L$(ERL_EI_LIBDIR) -lei -lpthread -lrt

HEADER_FILES = src/lib

SRC = $(wildcard src/*.c src/lib/*.c)
OBJ = $(SRC:.c=.o)

priv/matrix: priv $(OBJ)
	$(CC) -c $(CFLAGS) -I $(HEADER_FILES) -o $@ $(OBJ) $(LDLIBS) $(LDFLAGS)

priv:
	mkdir -p priv

clean:
	rm -rf priv $(OBJ) $(LIB_OBJ) $(BEAM_FILES)
