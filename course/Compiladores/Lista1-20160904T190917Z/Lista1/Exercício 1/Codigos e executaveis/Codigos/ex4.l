%{

	/* Exemplo 2 :: Flex 
			r e a l i z a o escaneamento de t a g s ( e . g . , HTML)*/


int linhas = 0;

%}


TAG \<(.)*\>
WHITESPACE [\ \t]
LINHA  [\n]

%%


{TAG}	;
{LINHA}		{ ++linhas; }
{WHITESPACE}	{ printf ("%s", yytext);  }
.		{ printf ("%s", yytext); }

%%


int main (int nArgs, char * szArgs[] ){

	yylex();
	printf ("\n total de linhas processadas: %d \n", linhas);
return 0;

}
