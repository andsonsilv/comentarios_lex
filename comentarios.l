
Autor: Antônio Andson da Silva - Ciência da Computação - Campus Quixadá

%{

/* Escreva um arquivo de entrada Lex para produzir um programa que coloque em caixa alta todos os comentários de um programa em C. */

#include<stdio.h>
#include <ctype.h>

#define FALSE 0
#define TRUE 1

%}


%%

"/*"        { char c;
              int done = FALSE;
              ECHO;
              do{
                while((c = input()) != '*')
                    putchar(toupper(c));
                putchar(toupper(c));
                while((c = input()) == '*')
                    putchar(toupper(c));
                putchar(toupper(c));
                if(c == '/') done = TRUE;
              }while(!done);
            }
        

.|\n;

%%


int yywrap(void){
	return 1;
}


int main(){
	
    yylex();

	return 0;

}


