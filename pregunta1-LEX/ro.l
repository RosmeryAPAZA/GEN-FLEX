%{
  #include <stdio.h>

int num_lines = 0, num_chars = 0;
extern FILE* yyin;
%}
%%
\n  ++num_lines; num_chars;
. ++num_chars;
%%

int main()
{
  yyin = fopen("text.txt", "r");
  yylex();
  printf("# of lines = %d, of chars = %d\n", num_lines, num_chars);
  return 0;
}
