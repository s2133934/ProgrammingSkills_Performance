# Makefile to run the code and a wee clean bit too if i want to use it

test_run:
	./percolate -l 100
	gprof -l percolate > ../results/grids/target_file.dat

.PHONY: clean
clean:
	rm -I *.dat *.pgm *.o percolate *.out
