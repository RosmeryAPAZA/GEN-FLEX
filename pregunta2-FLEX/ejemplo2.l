%{
#include <stdio.h>
%}

DIGIT       [0-9]
KEYWORD     if|else|while|for
WS          [ \t\n]

%%

{DIGIT}+    { printf("INTEGER: %s\n", yytext); }
{KEYWORD}   { printf("KEYWORD: %s\n", yytext); }
{WS}        ;  // Ignorar los espacios en blanco, tabulaciones y saltos de línea
.           { printf("ERROR: Caracter no valido: %s\n", yytext); }

%%

int main()
{
    yylex();
    return 0;
}
