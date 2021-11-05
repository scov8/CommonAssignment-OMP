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
3. To generate measures run `make generate_measures`
4. To extract mean times and speedup curves from them run `make extract_measures`

Results can be found in the `measures/measure` directory, divided by problem size and the gcc optimization option used.

In the current project you generate measures for double type, if you want to generate measures for int type please
change the word "double" in "int" in the file CMakeLists.txt (line 85).
