%{
%}
%%
[6-9][0-9]{9} {printf("mobile number is valid.");}
,+ {printf("mobile number is invalid.");}
%%
int yywrap(){}
int main() 
{
printf("enter the mobile number:");
yylex();
}
