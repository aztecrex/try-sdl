CFLAGS += $(shell sdl2-config --cflags)
CXXFLAGS += $(shell sdl2-config --cflags) -std=c++14
LDFLAGS += $(shell sdl2-config --libs) -lSDL2_image -lSDL2_ttf -lSDL2_mixer
SAMPLES = 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 21 22 23 24 \
          25 26 27 28 29 30 31 32 33 35 36 38 39 40
EXECS = $(SAMPLES:%=run_%)

.PHONY: all
all: $(EXECS)

$(EXECS): run_%: %.o
	$(CXX) -o $@ $^ $(CXXFLAGS) $(LDFLAGS)

.PHONY: clean
clean:
	rm -f *.o
	rm -f run_*
