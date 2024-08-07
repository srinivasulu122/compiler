%{

%}

%%

[a-z.0-9]+@[a-z]+(.com|.in) (printf("valid");}

.+ {printf("invalid");}

%%

int yywrap(){}

int main()

{

printf("enter your mail");

yylex();

}