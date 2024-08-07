%{

#include<stdio.h>

#include<string.h>

char word[] = "exam";

char replace[]= "viva";

%}

%%

[a-zA-Z]+ { if(strcmp(yytext, replace)==0) 
fprintf(yyout, "%s", word);

else

fprintf(yyout, "%s", yytext);}

. fprintf(yyout, "%s", yytext);

%%

int yywrap(){}

int main()

{

extern FILE *yyin, *yyout;

yyin=fopen("fex.l.txt","r"); 
yyout=fopen("out.l.txt","w");

yylex();

}