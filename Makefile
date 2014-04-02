objects = \
	coneway.o \

flags = -lglfw3 -lglew -lassimp -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo

all: coneway

coneway: $(objects)
	$(CC) $(flags) -o $@ $(objects)

coneway.o: coneway.c
	$(CC) -c -o $@ coneway.c

clean:
	rm -rf *.o coneway
