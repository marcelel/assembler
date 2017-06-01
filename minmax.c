#include <stdio.h>

long maxdiff(long a, long b, long c, long d) {
  long args[3] = {b,c,d};
  long min = a;
  long max = a;
  int i;

  for(i = 0; i < 3; ++i) {
    if(args[i] > max) max = args[i];
    if(args[i] < min) min = args[i];
  }

  return max-min;
}

long minmaxa(long a, long b, long c, long d);

int main() {
  printf("%ld\n", maxdiff(10,20,-10,1));
  printf("%ld\n", minmaxa(10,20,-10,30));

  return 0;
}