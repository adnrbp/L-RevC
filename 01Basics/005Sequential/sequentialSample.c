#include <stdio.h>

#define k 9
#define m 2

float x;
float aux;
float f;

void main(){

	printf("introduce a value for x \n");
	printf("in f(x)=[k(x-m)**2]/[1+k(x-m)**c2]' \n");
	scanf("%f", &x);

	aux = k*(x-m)*(x-m);
	f= aux/(1+aux);

	printf("the result of your operation is: %f\n", f);
}