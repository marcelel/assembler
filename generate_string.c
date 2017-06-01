#include<stdio.h>
#include<stdlib.h>

char* generate_string(char* s, int c, int n, int inc);

int main() {
    char* str = malloc(100);

    printf("bbbbb == %s\n", generate_string(str, 'b', 5, 0));
}
