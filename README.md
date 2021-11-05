# CommonAssignment1

## Dependencies

* CMake 3.9+
* OpenMP
* Python3
* Pipenv

## How to run

1. Create a build directory and launch cmake

   ```batch
   mkdir build
   cd build
   cmake ..
   ```

2. Generate executables with `make`
3. To generate measures for algorithm with complexity O(n^2) (case study n.1) run `make generate_measures` 
or if you want to generate measures for algorithm with complexity O(n) (case study n.2) run `make generate_measuresOn` 
4. To extract mean times and speedup curves from measures of algorithm with complexity O(n^2) run `make extract_measures` or run `make extract_measuresOn` for measures of algorithm with complexity O(n)

Results of measures of algorithm with complexity O(n^2) can be found in the `measures/measure` directory and results of measures of algorithm with complexity O(n) can be found in the `measures/measureOn`, divided by problem size and the gcc optimization option used.
