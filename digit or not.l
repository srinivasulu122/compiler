%%
[0-9]+ {printf("\nvalid digit \n"); }
.* printf("\ninvalid digit \n");
%%
int yywarp() {}
int main() 
{
yylex();
}return 0;