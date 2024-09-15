# cflfac-lynarr

This project holds the implementations used for performance test in my bachelor thesis. These algorithms are described in the following papers:
- Christophe Hohlweg and Christophe Reutenauer. Lyndon words, permutations and trees. Theoretical Computer Science, 307(1):173–178, 2003.
- Jean Pierre Duval. Factorizing words over an ordered alphabet. Journal of Algorithms, 4(4):363–381, 1983.
- Frantisek Franek, ASM Islam, M Sohel Rahman, and William F Smyth. Algorithms to compute the lyndon array. In Proceedings of the Prague Stringology Conference 2016, pages 172–184, 2016.

The library used for suffix array construction can be found here:
- https://github.com/IlyaGrebnov/libsais

For the testing the algorithms are all compiled into there own executable and then timed while running a single task. The folder "example_scripts" has scripts in them to show how I did it.
If one wants to test these implenentations, the following is needed to make it run:
- the command "cmake .." and "make" should be run from a "cflfac-lynarr/build" folder
- the data to test the algorithms is expected to be in a "cflfac-lynarr/data" folder
- the algorithms expect a parameter when called specifying the name of the data file. If the file is "cflfac-lynarr/data/testdata" for example, just pass the argument "testdata"
