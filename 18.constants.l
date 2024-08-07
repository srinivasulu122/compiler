%{

#include<stdio.h>

#include<stdlib.h>

FILE *in;

%}

%%

[0-9]+ { printf("\nThe constant:%s", yytext);}

.      ;

%%

int main()

{

char input[1024];

printf("enter file name:");

scanf("%99s", input);

in=fopen(input, "r");

yyin=in; 
yylex();

fclose(in);

return 0;

}

int yywrap()

{
return 1;
}

