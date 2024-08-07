%{

#include<stdio.h>

#include<stdlib.h>

int 1-1;

FILE *in;

%}
%%

\n  {1++; printf("\n%d ",1); }

.    printf("%s", yytext);
%%

int main()

{

char input[1024];

printf("enter file name:");

scanf("%99s", input);

in=fopen(input, "r");

printf("%d ",1);

yyin-in;

yylex();

fclose(in);

return 0;
}

int yywrap()
{
return 1;


}