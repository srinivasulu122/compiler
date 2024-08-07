%%
[A-Z]+[\t\n] { printf("%s is a capital word\n",yytext); }
. ;
%%
int main() 
{
	printf("enter a string :\n");
	yylex();
}
int yywrap()
{
	return 1;
}