#include <stdio.h>


void change_pos(int *n1, int *n2){
	
	int temp = *n1; 
	*n1 = *n2; 
	*n2 = temp;

}

void bubbleSort(int inputVector[], int n){
	int iter,pos;
	
	for(iter=0; iter<n-1; iter++){
		for (pos = 0; pos < n-iter-1; pos++)		
			if (inputVector[pos] < inputVector[pos+1])
			{
				change_pos(&inputVector[pos], &inputVector[pos+1]);
			}
	}

}


void printArray(int inputVector[], int size){
	int pos;
	
	for (pos=0; pos < size; pos++){
		printf("%d  ",inputVector[pos]);
	}
	printf("End of the ordering process, bye.\n");

}


int main(){
	int inputVector[] = {98,87,75,12,1,5,9,2};
	
	int size = sizeof(inputVector) / sizeof(inputVector[0]);
	
	bubbleSort(inputVector, size);
	printf("Array ordered = \n");
	printArray(inputVector, size);
	printf("\n");

	return 0; 

}
