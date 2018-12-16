#include <stdio.h>

void main(){

	int a,b,c,d;
	scanf("%d", &a);
	scanf("%d", &b);
	scanf("%d", &c);
	scanf("%d", &d);
	
	if(a>b){
		printf("A is bigger than B \n");

	} else if (a > c){
		printf("A is bigger than C \n");
	} else if (a > d){
		printf("A is bigger than D \n");
	} else{
		printf("A is not bigger than B, C or D \n");
	}


}