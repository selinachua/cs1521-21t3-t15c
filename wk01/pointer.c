int  x;  // a variable located at address 1000 with initial value 0
int *p;  // a variable located at address 2000 with initial value 0

/*
  1000  | 2000
|-------------|
|    3  | NULL|
---------------
*/

// p: 1000
// x: 0
p = &x;

// p: 1000
// x: 5
x = 5;

// p: 1000
// x: 3
*p = 3;

// p: 1000
// x: 1000
x = (int)p;

// p: 1000
// x: 2000
x = (int)&p;

// p: NULL
// x: 2000
p = NULL;

// BREAKS
*p = 1;