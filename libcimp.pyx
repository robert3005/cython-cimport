from pkg.cimpPy cimport sum

cdef public int cSum(int a, int b):
    return sum(a, b)
