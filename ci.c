#include <stdio.h>
#include <stdlib.h>
#include <Python.h>
// #include <omp.h>
#include "libcimp.h"

int main(int argc, char **argv) {
  Py_SetProgramName(argv[0]);  /* optional but recommended */
  Py_Initialize();
  PySys_SetArgv(argc, argv); // must call this to get sys.argv and relative imports  initlibcimp();
  int a = 2;
  int b = 3;
  int c = cSum(a, b);
  printf("sum of %d and %d is %d\n", a, b, c);
  Py_Finalize();
  return 0;
}
