%{

%}

%%

"+" {printf("addition");}

"-" {printf("subtraction");}

"*" {printf("multiplication");}

"/" {printf("div");}

%%

int yywrap(){}

int main()

{ 
printf("enter:");

yylex();

return 0;
}