cmake_minimum_required(VERSION 3.14)

project(callback)


#set(BUILD_SHARED_LIBS OFF)
#set(CMAKE_POSITION_INDEPENDENT_CODE ON)

find_package(PythonLibs REQUIRED)
list(APPEND NUMPY_INCLUDE_DIR "/opt/anaconda3/lib/python3.9/site-packages/numpy/core/include/")
include_directories(${PYTHON_INCLUDE_DIRS} ${NUMPY_INCLUDE_DIR})

#list(APPEND PYTHON_DEPEND_LIBS_DIR #"/usr/lib/x86_64-linux-gnu/libexpat.a"
#                                   "/usr/lib/x86_64-linux-gnu/libz.a"
#								   "/usr/lib/x86_64-linux-gnu/libpthread.a"
#								   "/usr/lib/x86_64-linux-gnu/libdl.a"
#								   "/usr/lib/x86_64-linux-gnu/libutil.a"
#								   "/usr/lib/x86_64-linux-gnu/libm.a"
#								   "/usr/lib/x86_64-linux-gnu/libc.a"
#								   #"/usr/lib/x86_64-linux-gnu/libc.so"
#								   #"/usr/lib/gcc/x86_64-linux-gnu/7/libgcc.a"
#								   )


add_executable(callback callback.c)

target_link_libraries(callback ${PYTHON_LIBRARIES})
target_include_directories(callback PUBLIC ${PYTHON_INCLUDE_DIRS} ${NUMPY_INCLUDE_DIR})
