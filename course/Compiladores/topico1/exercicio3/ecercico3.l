%{
	/* Exemplo 1:: Flex
	reconhecimento simples de digitos e palavras
	com reconhecimento de espaços também */

	int linhas = 0, caracteres = 0, tabs = 0;
%}
NOVALINHA [\n]+
TAB [\t]+
%%
{NOVALINHA}  { ++linhas; ++caracteres;}
{TAB} {++tabs;}
	{++caracteres;}

numPalavra++;}
{ESPACO}  {printf("Digito: \"%s\"\n", yytext); }

%%

int main (int nArgs, char* szArgs[]){
	yylex();
	printf("Numero_linhas: %d\n", linhas);
	printf("Numero_caracteres: %d\n", caracteres);
	printf("Numero_tabulacoes: %d\n", tabs);
	return 0;	
}


