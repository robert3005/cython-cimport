EXECUTABLE = ci

OBJS       = ci.o

CC         = gcc
CFLAGS     = -g -std=c99 -O2 -I/usr/include/python2.7 -I$(shell pwd)  -fopenmp

LINKER     = g++
LDFLAGS    = -L$(shell pwd) -lgomp $(shell python-config --ldflags) -lcimp
.PHONY: clean cython

all: cython $(EXECUTABLE)

cython:
	python setup.py build_ext --inplace

.c.o:
	$(CC) $(CFLAGS) -c $<

$(EXECUTABLE) : $(OBJS)
	$(LINKER) -o $(EXECUTABLE) $(OBJS) $(LDFLAGS)

clean:
	rm -rf *.o *.so libcimp.c libcimp.h pkg/cimpPy.so pkg/cimpPy.c pkg/__init__.pyc core build $(EXECUTABLE)
