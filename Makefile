src = $(wildcard *.c)
obj = $(src:.c=.o)

LDFLAGS = -lm

clox: $(obj)
	$(CC) -o $@ $^ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(obj) myprog