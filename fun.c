#include<stdio.h>
#include<stdlib.h>

char* fun(char* buf, char* a, char* b);

int main() {
	char * str = malloc(100 * sizeof(char));
	
	printf("%s \n", fun(str, "aaa", "bbb"));
	
	free(str);
	return 0;
}
