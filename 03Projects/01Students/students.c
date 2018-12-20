#include <stdio.h>
#include <string.h>

void main() {

	//save username string:
	char userName[25];
	int chosenAct;

	printf("welcome to students platform\n");
	printf("enter your username\n");
	scanf("%s", userName);

	printf("welcome %s, lets access to your section\n", userName );



	if(strcmp(userName,"julian")==0){
		printf("this is the free Edition of the Platform.\n");
		printf("What do you want to do?\n");
		printf("enter: \n\t 1. to study \n\t 2. to read the blog\n\t Any other value. to exit. \n");
		
		scanf("%d", &chosenAct);
		//concat descicions:
		if(chosenAct == 1)
			printf("you are in the study-section, use it to the top.\n");
		else if(chosenAct == 2)
			printf("you are in the blog-section, have fun.\n");
		else
			printf("bye bye\n");
	} 
	else if(strcmp(userName,"juliana")==0){
		printf("this is the Standard Edition of the Platform.\n");
		printf("What do you want to do?\n");
		printf("enter: \n\t 1 to study \n\t 2. to read the blog\n\t Any other value. to exit. \n");
		
		scanf("%d", &chosenAct);
		//concat descicions:
		if(chosenAct == 1)
			printf("you are in the study-section, use it to the top.\n");
		else if(chosenAct == 2)
			printf("you are in the blog-section, have fun.\n");
		else
			printf("bye bye\n");
	}
	else if(strcmp(userName,"paula")==0){
		printf("this is the Premium Edition of the Platform.\n");
		printf("What do you want to do?\n");
		printf("enter: \n\t 1 to study \n\t 2. to read the blog.\n\t 3. request a mentor. \n\t Any other value. to exit. \n");

		scanf("%d", &chosenAct);
		//concat descicions:
		if(chosenAct == 1)
			printf("you are in the study-section, use it to the top.\n");
		else if(chosenAct == 2)
			printf("you are in the blog-section, have fun.\n");
		else if(chosenAct == 3)
			printf("you are in the mentor-section.\n");
		else
			printf("bye bye\n");
	}
	else
		printf("you are not a user, register please.\n");


}