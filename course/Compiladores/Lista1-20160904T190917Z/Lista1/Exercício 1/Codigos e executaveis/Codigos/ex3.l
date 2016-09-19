%{

	/* Exemplo 2 :: Flex 
			contagem de linhas e caracteres*/


int linhas = 0, caracteres = 0, tabs = 0;

%}


NOVALINHA [\n]+
TAB	  [\t]+

%%


{NOVALINHA}	{ ++linhas; ++caracteres;}
{TAB}		{ ++tabs; }
.		{ ++caracteres; }

%%


int main (int nArgs, char * szArgs[] ){

	yylex();
	printf ("numero de linhas: %d \n", linhas);
	printf ("numero de tabulacoes: %d \n", tabs);
	printf ("numero de caracteres: %d \n", caracteres);

return 0;

}
