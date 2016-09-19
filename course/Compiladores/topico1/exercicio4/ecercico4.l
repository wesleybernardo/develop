%{

	int linhas = 0;
%}
TAG \<(.)*\>
WHITEESPACE [\ \t]
LINHA [\n]
%%
{TAG}  { linhas++;}
{LINHA} {printf("%s",yytext);}
{WHITEESPACE}	{printf("%s",yytext);}

%%

int main (int nArgs, char* szArgs[]){
	yylex();
	printf"\nTotal_de_linhas_processadas: %d", linhas);
	return 0;	
}


