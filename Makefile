all: *.o link

*.o: *.c
	gcc -c *.c

link: *.o
	gcc *.o -O3 -Wall -Wextra -lncurses -lpanel -o load

clean: 
	rm *.o load