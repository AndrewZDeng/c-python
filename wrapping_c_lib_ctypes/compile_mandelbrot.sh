gcc -shared -Wl,-soname,mandelbrot \
    -o mandelbrot.so \
    -fPIC mandelbrot.c