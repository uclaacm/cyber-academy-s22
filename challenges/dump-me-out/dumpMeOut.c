#include <stdio.h>

int main (){
  int x;
  int y = 3;
  int z = 7;
  int *ptr = &x;
  x = y+z;
  y += x*3;
  (*ptr) += 6;
  ptr = &y;
  printf("%p %d %d %d\n",ptr,x,y,z);
  return x;
}
