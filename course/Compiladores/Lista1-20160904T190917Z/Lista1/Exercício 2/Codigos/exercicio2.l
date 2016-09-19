%{

	/* Exemplo 0 :: Flex
		realiza o escaneamento e o reconhecimento de tags*/

%}



LETTER [a-zA-Z]
NUMBER  [0-9]
ID ({LETTER}+{NUMBER}*)*
%%

{NUMBER}	{ printf ("Identificadores nao podem comecar por um numero! \n");  }
{ID}		{ printf ("Identificadores: %s \n", yytext);  }
.		;

%%


int main (int nArgs, char * szArgs[]){

	yylex();
	return 0;


/* https://msdn.microsoft.com/pt-br/library/e7f8y25b.aspx */
}
