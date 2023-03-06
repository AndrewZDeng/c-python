import ctypes
import numpy as np
from numpy.ctypeslib import ndpointer
import matplotlib.pyplot as plt

lib = ctypes.CDLL('./mandelbrot.so')
mandelbrot = lib.mandelbrot

mandelbrot.restype = None
mandelbrot.argtypes = [ctypes.c_int,
                      ctypes.c_int,
                      ndpointer(ctypes.c_int),]

size = 400
iterations = 100
col = np.empty((size,size), dtype=np.int32)

mandelbrot(size, iterations, col)

fig, ax = plt.subplots(1, 1, figsize=(10,10))
ax.imshow(np.log(col), cmap=plt.cm.hot)
ax.set_axis_off()
plt.show()