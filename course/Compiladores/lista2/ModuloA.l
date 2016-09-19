%{
#include <string.h>
/*estrutura para a tabela de simbolos*/	
typedef struct simbolo{
	char nome[30];
	int qtd;
}Simbolo;
Simbolo simbolo[20];
Simbolo *adiciona(char*);
%}
Co >
fim <\/a>
pal \ç
tagDrama {Co}Drama{fim}
tagComedia {Co}Com.dia{fim}
tagAcao {Co}A..o{fim}
tagTerror {Co}Terror{fim}
%%
{tagDrama} {adiciona("Drama");}
{tagComedia} {adiciona("Comedia");}
{tagTerror} {adiciona("Terror");}
{tagAcao} {adiciona("Acao");}
.|\n ;

%%

Simbolo *zerarTabela(){
int i = 0;
	while(i <= 19){
		simbolo[i].qtd = 0;
		strcpy(simbolo[i].nome, "0");	
		i++;
	}
return simbolo;
}

Simbolo *adiciona(char *token){
	int i = 0;
	
	while(strcmp(simbolo[i].nome, token) != 0){
		if(i > 20){
			return simbolo;
		}
		if(simbolo[i].qtd == 0){
			strcpy(simbolo[i].nome, token);
			break;	
		}								
		i++;
	}	
simbolo[i].qtd++;
return simbolo;
}

void resultadoPesquisa(){
	int i =0;
	while(simbolo[i].qtd != 0 && i+1 < 20){
		printf("%s, %d\n",simbolo[i].nome, simbolo[i].qtd);
		i++;
	}
}

int main(int argc, char *argv[]){	
FILE *f = fopen("index.html","r");

	if(!f){
		perror(argv[0]);
		return(1);
	}
zerarTabela();
yyrestart(f);
yylex();
resultadoPesquisa();
fclose(f);
return 0;
}

