garbage_collector: src/garbage_collector.c
	gcc -Wall -Werror -std=gnu99 -o garbage_collector src/garbage_collector.c

clean: 
	rm garbage_collector

run: src/garbage_collector.c
	gcc -Wall -Werror -std=gnu99 -o garbage_collector src/garbage_collector.c
	valgrind --leak-check=yes ./garbage_collector
