%{
#include <stdio.h>
%}

%%
"/"      { printf("divided by"); }
"//".*  { printf("comment");}
[f]     {printf("floatdcl ");}
[i]     {printf("intdcl ");}
[=]     {printf("assign ");}
[+]     {printf("plus ");}
[-]     {printf("minus ");}
[*]     {printf("times ");}
[p]     {printf("print ");}
[0-9]+  {printf("inum ");}
[0-9]+[.][0-9] {printf("floatnum ");}
[a-zA-Z]+       {printf("id ");}
%%

int main(void) {
    yylex();
    return 0;
}

int yywrap(void) {
    return 1;
}
