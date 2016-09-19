%{

/*primeiro teste*/
%}


DIGITO [0-9]
PALAVRA [a-zA-Z]+

%%

{DIGITO}  { printf("Digito : \"%s\"\n",yytext); }
{PALAVRA} { printf("Palavra : \"%s\"\n",yytext);  }	
	  	  { printf(" Nao encontrado : \"%s\"\n",yytext); }	

%%

int main (int Argv, char *szArgs[]){
	yylex();
	return 0;
}
