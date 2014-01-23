from distutils.core import setup, Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext

extensions = [
    Extension("libcimp", ["libcimp.pyx"], include_dirs=["."]),
    Extension("pkg.cimpPy", ["pkg/cimpPy.pyx"])
]

setup(
    name = "CIMP",
    cmdclass = {"build_ext": build_ext},
    packages = ["pkg"],
    ext_modules = cythonize(extensions)
)
