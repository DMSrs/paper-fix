CFLAGS = `pkg-config --cflags opencv`
LIBS = `pkg-config --libs opencv`

main:
	clang++ -Wall $(CFLAGS) $(LIBS) main.cpp -o main.out

release:
	clang++ -Wall $(CFLAGS) $(LIBS) main.cpp -O3 -o paperfix

.PHONY: main

run: main
	./main.out test-image/1.jpg
