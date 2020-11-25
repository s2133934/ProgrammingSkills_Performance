#Bash file for creating results for no flags - so a clean run with all defaults and no extras (oracle)

names='2500'
for name in $names
do
echo Running for $name
# Clear directory of old executables and objects
rm -f *.o percolate

#Build the code with no flags 
gcc -g -c arralloc.c uni.c percolate.c
gcc -g -o percolate arralloc.o uni.o percolate.o -lm

# Write the output and runtime to a file
(time ./percolate -l $name) > ../results/grids/flag_noflags_$name.dat 2>&1
done
echo All done
