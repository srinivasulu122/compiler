%{
#include<stdio.h>
%}
%%
int |void|printf|scanf|if|else|while {printf("%s is keyword", yytext);}
[a-zA-Z] {printf("\n%s is identifiers",yytext);}
%%
int yywrap(){}
int main()
{
printf("enter:");
yylex();
}