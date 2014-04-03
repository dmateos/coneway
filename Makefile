objects = \
	src/coneway.o \

flags = -lglfw3 -lglew -lassimp -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo

all: coneway

coneway: $(objects)
	$(CC) $(flags) -o $@ $(objects)

src/coneway.o: src/coneway.c
	$(CC) -c -o $@ src/coneway.c

clean:
	rm -rf src/*.o coneway
