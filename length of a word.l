%{

#include<stdio.h>

int ml=0;

%}

%%

[a-zA-Z]+ {

int l=yyleng;

if (l>ml)

{

ml=1;

}

}

. ;

%%

int yywrap(){}

int main()

{

printf("enter words:");

yylex();

printf("max len:%d", ml);

return 0;

}