%{
#include<stdio.h>

#include<stdlib.h>

FILE "in;

%} 
%%

bool int void return|printf|include stdio define { printf("\n%s is keyword", yytext

[a-zA-Z] { printf("\nks is identifier", yytext); }

[0-9]+ (printf("\nks is constant", yytext); )

[-+*/] { printf("\nks is operator", yytext); } [(){}] { printf("\nks is paranthesis", yytext); }

[!@#%^&] { printf("\nks is special charecter", yytext); }

.     ;

int main()

{

char input[1024];

printf("enter file name:"); scanf("%99s", input);

in-fopen(input, "r");

yyin-in;

yylex(); fclose(in);

return 0;
}

 int yywrap()
{

return 1;
}