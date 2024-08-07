%{

%}

%%

[aeiouAEIOU] [a-zA-Z]+ {printf("accepted");}

,+ {printf("not accepted");}

%%

int yywrap(){}

int main()

{

printf("enter string");

yylex();

return 0;

}