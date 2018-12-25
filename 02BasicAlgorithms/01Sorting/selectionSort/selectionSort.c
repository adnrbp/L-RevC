#include <stdio.h> 
  
void change_pos(int *n1, int *n2){
    
    int temp = *n1; 
    *n1 = *n2; 
    *n2 = temp;

}

  
void selectionSort(int inputVector[], int n) 
{ 
    int i, j, min_idx; 
  

    for (i = 0; i < n-1; i++) 
    { 
        min_idx = i; 
        for (j = i+1; j < n; j++) 
          if (inputVector[j] < inputVector[min_idx]) 
            min_idx = j; 

        change_pos(&inputVector[min_idx], &inputVector[i]); 
    } 
} 

void printArray(int inputVector[], int size){
    int pos;
    
    for (pos=0; pos < size; pos++){
        printf("%d  ",inputVector[pos]);
    }
    printf("End of the ordering process, bye.\n");

}



int main() 
{ 
    int inputVector[] = {64, 25, 12, 22, 11}; 
    int size = sizeof(inputVector)/sizeof(inputVector[0]); 
    selectionSort(inputVector, size); 
    printf("Sorted array: \n"); 
    printArray(inputVector, size); 
    return 0; 
} 