%{
	/* Exemplo 1:: Flex
	reconhecimento simples de digitos e palavras
	com reconhecimento de espaços também */

	int numPalavra = 0;
%}
DIGITO [0-9]
PALAVRA [a-zA-Z]+
ESPACO " "
%%
{DIGITO}  { printf("Digito: \"%s\"\n", yytext); }
{PALAVRA} { printf("Palavra: \"%s\"\n", yytext);
numPalavra++;}
{ESPACO}  {printf("Digito: \"%s\"\n", yytext); }

%%

int main (int nArgs, char* szArgs[]){
	yylex();
	printf("Numero palavras: %d\n", numPalavra);
	return 0;	
}


