
#include <stdio.h>
 
long sum(long a, long b);
 
int main() {
  printf("%ld\n", sum(1, 3));
  printf("%ld\n", sum(3, 5));
  printf("%ld\n", sum(3, 1));
  printf("%ld\n", sum(5, 3));
  printf("%ld\n", sum(1, 5));
 
  return 0;
}