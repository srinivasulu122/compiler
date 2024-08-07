%{

#include<stdio.h>

#include<string.h>

#include<stdlib.h>

int c=0;

int w=0;

int n=0;

FILE *in;

%}

%%

[a-zA-Z]+   {w++; c+=strlen(yytext); }

\n {n++; }

[!@#$%^&()=+/-,]  { C++; }

.        ;

%%

int main()

{

char input [1024]; 
printf("enter the file:"); 
scanf("%99s", input); 
in=fopen(input, "r"); 
yyin=in; yylex(); fclose(in); 
printf("\nThe charecters: %d",c); 
printf("\nThe words: %d", w); 
printf("\nThe newlines:%d",n);
 return 0;
}
int yywrap()

{

return 1;
}