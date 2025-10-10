CC = gcc
PROG_NAME ?= conway

$(PROG_NAME): evolve.o main.o
	$(CC) -o $(PROG_NAME) evolve.o main.o

%.o: %.c
	$(CC) -MD -MF $(subst .c,.d,$^) -o $@ -c $^

.PHONY: clean
clean:
	rm -f *.o
	rm -f $(PROG_NAME)

.PHONY: install
install: $(PROG_NAME)
	install -m 655 -o root $(PROG_NAME) /usr/bin

