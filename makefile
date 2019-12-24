CFLAGS = -c -Wall
CC = gcc
LIBS =  -lm

all: server client

server: folk_server.c
	${CC} folk_server.c -o server

client: tcp_client.c
	${CC} tcp_client.c -o client
clean:
	rm -f *.o *~
	rm server
	rm client