%{

#include<stdio.h>

%} %%

[a-zA-Z]+ {printf("%s is word\n",yytext);}

"<"|">"|"="|"<="|">="|"==" {printf("%s is operator\n", yytext);}

%%

int yywrap(){}

int main()

{

printf("enter :");

yylex();

return 0;

}