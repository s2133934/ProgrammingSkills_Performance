 rm -f *.o percolate
gcc -g -c arralloc.c uni.c percolate.c  -pg
gcc -g -o percolate arralloc.o uni.o percolate.o -lm -pg
