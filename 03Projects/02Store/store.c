#include <stdio.h>
#include <string.h>


char option[8];
int hats;
int totalHats=0;
int continueBuying = 1;

void main(){
	while(continueBuying == 1){
		printf("choose the product you want\n");
		printf("enter hat to buy one\n");
		printf("enter thermo to buy one\n");
		printf("enter shirt to buy one\n");
		printf("enter cup to buy one\n");

		scanf("%s", option);
		if(strcmp(option, "hat") == 0){
			printf("each hat costs 5 dolars, how many would you like?\n");
			scanf("%d",&hats);
			totalHats = (totalHats + (hats*5));
			printf("your hat total is: %d\n", totalHats );

		}else if (strcmp(option, "thermo")== 0){

		}else if (strcmp(option, "shirt")== 0){
			
		}else if (strcmp(option, "cup")== 0){
			
		}else{
			printf("the product does not exist.\n");
			printf("if you want to buy another product, press 1 \n to exit,press any number\n");
			scanf("%d", continueBuying)
		}

		printf("thanks for choosing us.\n");
	}
}