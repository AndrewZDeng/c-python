# export PYTHONPATH=$PYTHONPATH:/home/andrew/CLRF/c-python/build/lib.linux-x86_64-3.7
# after build and before import spam
from distutils.core import setup, Extension

module1 = Extension('spam',
				   sources = ['spam.c'])

setup(name = 'PackageName',
	 version = '1.0',
	 description = 'This is a spam package',
	 ext_modules = [module1])