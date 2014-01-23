from pkg.cimpPy cimport sum

cdef public int cSum(int a, int b) nogil:
    return sum(a, b)
