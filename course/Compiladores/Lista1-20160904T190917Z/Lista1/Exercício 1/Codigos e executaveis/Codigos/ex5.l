%{

	/* Exemplo 0 :: Flex
		realiza o escaneamento e o reconhecimento de tags*/

int linhas = 0, qtdTags =0;
%}


TAG \<(.)*\>
WHITESPACE [\ \t]
LINHA  [\n]

%%


{TAG}	{ qtdTags++; printf ("Tag: %s \n", yytext);  }
{LINHA}		{ ++linhas; }
{WHITESPACE}	;
.		;

%%


int main (int nArgs, char * szArgs[]){

	yylex();
	printf("\n Total de linhas processadas: %d \n", linhas);
	printf("\n Quantidade de tags reconhecidas: %d \n", qtdTags);
	return 0;

}
