#include <Python.h>
#include <numpy/arrayobject.h>


int main() {

  Py_Initialize();


  PyObject *pModule = PyImport_ImportModule("numpy");
  if (pModule == NULL) {printf("Importing module failed\n"); exit(-1);}

  PyObject *pFunc = PyObject_GetAttrString(pModule, "sum");
  if (pFunc == NULL) {printf("Getting function failed\n"); exit(-1);}

  if (!PyCallable_Check(pFunc)) {printf("Function not callable\n"); exit(-1);}


  PyObject *arglist;
  PyObject *result;

  if (PyArray_API == NULL) {
    import_array();
  }

  double a_arr[3] = {1,2,3};
  double b_arr[2][2] = {{1,2},{3,4}};
  npy_intp len = 3;
  npy_intp dim[2] = {2,2};

  PyArrayObject *a_np = (PyArrayObject*)PyArray_SimpleNewFromData(1, &len, NPY_DOUBLE, (void*)a_arr);
  PyArrayObject *b_np = (PyArrayObject*)PyArray_SimpleNewFromData(2, dim, NPY_DOUBLE, (void*)b_arr);


  arglist = Py_BuildValue("(O)", b_np);

  if (!(result = PyObject_CallObject(pFunc, arglist))) {
    printf("Function calling failed\n");
    exit(-1);
  }

//  PyArrayObject *result_np;
//  PyArg_ParseTuple(result, "O", &result_np);

  double sum = PyFloat_AsDouble(result);

  Py_DECREF( result );
  Py_DECREF( arglist );
  Py_DECREF( b_np );
  Py_DECREF( a_np );
  Py_DECREF( pFunc );
  Py_DECREF( pModule );

  Py_Finalize();

  printf( "Result: %.2f\n", sum );
//  for (int i=0; i < 3; i++) {
//    printf("%.2f\t", *(double*)(result_np->data + i*result_np->strides[0]));
//  }

  return 0;

}


/*
int main() {
	
	Py_Initialize();
	
	PyRun_SimpleString("import sys\n"
					   "sys.path.insert(0, '/home/andrew/CLRF/c-python/')");

	PyRun_SimpleString("print(sys.path)");

	PyObject *pModule = PyImport_ImportModule("myFunc");
	if (pModule == NULL) {printf("Importing module failed\n"); exit(-1);}
	
	PyObject *pFunc = PyObject_GetAttrString(pModule, "myFuncArray");
	if (pFunc == NULL) {printf("Getting function failed\n"); exit(-1);}
	
	if (!PyCallable_Check(pFunc)) {printf("Function not callable\n"); exit(-1);}
	
	
	PyObject *arglist;
	PyObject *result;
	
	if (PyArray_API == NULL) {
		import_array();
	}
	
	double a_arr[3] = {1,2,3};
	double b_arr[3] = {4,5,6};
	npy_intp len = 3;
	
	PyArrayObject *a_np = (PyArrayObject*)PyArray_SimpleNewFromData(1, &len, NPY_DOUBLE, (void*)a_arr);
	PyArrayObject *b_np = (PyArrayObject*)PyArray_SimpleNewFromData(1, &len, NPY_DOUBLE, (void*)b_arr);
	
	
	arglist = Py_BuildValue("(OO)", a_np, b_np);
	
	if (!(result = PyObject_CallObject(pFunc, arglist))) {
		printf("Function calling failed\n");
		exit(-1);
	}
	
	PyArrayObject *result_np;
	PyArg_ParseTuple(result, "O", &result_np);
	
	Py_Finalize();

	for (int i=0; i < 3; i++) {
		printf("%.2f\t", *(double*)(result_np->data + i*result_np->strides[0]));
	}
	
	return 0;
	
}
*/