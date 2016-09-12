test:	main.c libbye.so libhello.so
	gcc main.c -L. -Wall -o test  -lbye -lhello
launch:	test
	export LD_LIBRARY_PATH=/home/username/foo:$LD_LIBRARY_PATH
	./test
hello.o: hello.c
	gcc -c -Wall -Werror -fpic hello.c
bye.o: bye.c
	gcc -c -Wall -Werror -fpic bye.c
libhello.so: hello.o
	gcc -shared -o libhello.so hello.o
libbye.so: bye.o
	gcc -shared -o libbye.so bye.o
clean:
	rm -rf *.out *.so
