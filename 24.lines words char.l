%{

int i=0,1=0,c=0; 
%}

%%

[\n] {1++;}

[] {i++;}

[a-zA-z0-9] {C++;}
 %%

int yywrap(){}

int main()

{

printf("enter the string:");

yylex();

printf("no.of lines:%d\n",1);

printf("no.of words: %d", i+1);

printf("no.of characters:%d",c); 
}