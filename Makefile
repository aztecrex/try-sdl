CFLAGS += $(shell sdl2-config --cflags)
LDFLAGS += $(shell sdl2-config --libs)
OBJS = trysdl.o

.PHONY: all
all: trysdl

trysdl: $(OBJS)
	cc -o $@ $^ $(CFLAGS) $(LDFLAGS)


