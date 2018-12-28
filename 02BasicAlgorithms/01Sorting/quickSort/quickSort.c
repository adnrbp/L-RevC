#include<stdio.h> 
  
void change_pos(int *n1, int *n2){
    
    int temp = *n1; 
    *n1 = *n2; 
    *n2 = temp;

}



int partition (int arr[], int low, int high) 
{ 
    int pivot = arr[high];
    int smallIndex = (low - 1);
  
    for (int pos = low; pos <= high- 1; pos++) 
    { 
        if (arr[pos] <= pivot) 
        { 
            smallIndex++;
            change_pos(&arr[smallIndex], &arr[pos]); 
        } 
    } 
    change_pos(&arr[smallIndex + 1], &arr[high]); 
    return (smallIndex + 1); 
} 
  
void quickSort(int arr[], int low, int high) 
{ 
    if (low < high) 
    { 
        int partIndex = partition(arr, low, high); 
  
        quickSort(arr, low, partIndex - 1);  //sort before part 
        quickSort(arr, partIndex + 1, high);  //sort after part 
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
    int arr[] = {10, 7, 8, 9, 1, 5}; 
    int n = sizeof(arr)/sizeof(arr[0]); 
    quickSort(arr, 0, n-1); 
    printf("Sorted array: n"); 
    printArray(arr, n); 
    return 0; 
} 