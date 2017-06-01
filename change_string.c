
#include<stdio.h>
#include<stdlib.h>

char* change_str(char * s, int c);

int main() {
  char* wsk = malloc(100);

  sprintf(wsk, "%s", "a b  c   d\0");

  printf("%s\n", wsk);

  //0 - bez zamiany na duze litery; 1 - zamiana na duze litery
  printf("%s\n", change_str(wsk, 1));

  free(wsk);
  return 0;
}
