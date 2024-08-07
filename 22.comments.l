%{

#include<stdio.h>

#include<string.h>

#include<stdlib.h>

int c=0;

FILE *in;

FILE *out;

%}
%%

"/*"[a-zA-Z0-9]+"*/" { C++; }



\n      { fprintf(out,"\n"); }

.      { fprintf(out, "%s", yytext); }

%%

int main()

{

char input[1024];

char output[1024];

printf("Enter input text:");

scanf("%99s", input); in=fopen(input, "r");

printf("\nEnter output file:"); scanf("%99s", output);

out=fopen(output, "w");

yyin=in;

yylex();

printf("\nThe no of comments : %d",c);

fclose(in);

return 0;
}
int yywrap()


{
return 1;
}

