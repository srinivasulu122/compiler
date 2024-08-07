%{

#include<stdio.h>

#include<stdlib.h>

#include<string.h>

char alphabetlist[1000] = "";

char numberlist[1000] = "";

%}

%%

[0-9]+ {strcat(numberlist, yytext); } [a-zA-Z]+ { strcat(alphabetlist, yytext); }

%%

int yywrap() { 
printf("alphabets: %s\n", alphabetlist); 
printf("Numbers: %s\n", numberlist); 
return 1;

}

int main() {

char input[100];

printf("enter the input: "); 
fgets(input, sizeof(input), stdin);

yy_scan_string(input);

yylex();

return 0;

}