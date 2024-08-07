%{

#include<stdio.h>

%}

%%

[https://]+[www.]+[a-z]+".com" {printf("valid");} 
.+ {printf("invalid");}

%%

int yywrap(){}

int main() {

printf("enter url:");

yylex();
} 