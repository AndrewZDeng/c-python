gcc -c callback.c $(python3.7-config --cflags) -I/home/andrew/.local/lib/python3.7/site-packages/numpy/core/include -fPIC
gcc callback.o $(python3.7-config --ldflags) -o callback
