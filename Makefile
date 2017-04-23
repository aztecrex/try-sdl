CFLAGS += $(shell sdl2-config --cflags)
CXXFLAGS += $(shell sdl2-config --cflags)
LDFLAGS += $(shell sdl2-config --libs)
SAMPLES = 01 02 03

.PHONY: all
all: $(SAMPLES)

$(SAMPLES): %: %.o
	cc -o $@ $^ $(CFLAGS) $(LDFLAGS)

