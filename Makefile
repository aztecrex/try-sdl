CFLAGS += $(shell sdl2-config --cflags)
CXXFLAGS += $(shell sdl2-config --cflags)
LDFLAGS += $(shell sdl2-config --libs) -lSDL2_image
SAMPLES = 01 02 03 04 05 06 07 08 09 10 11
EXECS = $(SAMPLES:%=run_%)

.PHONY: all
all: $(EXECS)

$(EXECS): run_%: %.o
	$(CXX) -o $@ $^ $(CXXFLAGS) $(LDFLAGS)
