%{

	/* Exemplo 0 :: Flex
		realiza o escaneamento e o reconhecimento de tags*/

int linhas = 0, qtdTags =0;
%}



LETTER [a-zA-Z]
NUMBER  [0-9]
ID {LETTER} + (({NUMBER} + {LETTER})*)?
%%


{ID}  { printf ("Identificadores: %s \n", yytext);  }

%%


int main (int nArgs, char * szArgs[]){

	yylex();
	return 0;


/* https://msdn.microsoft.com/pt-br/library/e7f8y25b.aspx */
}
