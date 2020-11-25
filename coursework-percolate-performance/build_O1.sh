
names='-O0 -O1 -O2 -O3 -Os -Ofast'

for name in $names
do
echo Running for $name

#Clear the folder of old objects and executable
rm -f *.o percolate

#Build the code for each flag
gcc -g -c arralloc.c uni.c percolate.c $name
gcc -g -o percolate arralloc.o uni.o percolate.o -lm $name

#Output the code terminal output and the times to a file:
(time ./percolate -l 2500) > ../results/flags/flag_2500_$name.dat 2>&1

# Found here that gprof doesnt work well with compiler flags so i abandoned this line 
#(left for future reference so i dont make the same mistake twice)

#gprof -l percolate > ../results/flags/flag_500_$name.dat
done
echo All done
