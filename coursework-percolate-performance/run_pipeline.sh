#!/bin/bash
# Dont forget to load modules and build first!

names='200 500 1000 1500 2000 2500 3000 3500'
for name in $names
do
echo $name
# #For part 1 of coursework where running with pre-built executable for grids
./percolate -l $name
gprof -l percolate > ../results/grids/gprofresults_$name.dat
# #For part 2 where runtime withuot gprof overheads was needed
# (time ./percolate -l $name) > ../results/grid_no_gprof/gridonly_$name.dat 2>&1
done
echo All done
