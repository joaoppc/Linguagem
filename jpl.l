%{
#include <stdio.h>
#include "jpl.tab.h"
void showError();
%}

numbers ([0-9])+
alpha   ([a-zA-Z])+

%%

{alpha}         {sscanf(yytext, "%s", yylval.name); return (STRING);}
{numbers}       {yylval.number  = atoi(yytext); return (NUM);}
";"             {return(SEMICOLON);}
":"             {return(COLON);}
"~"             {return(TIO);}
"<"             {return(LESS);}
">"             {return(BIGGER);}
"="             {return(ASSIGN);}
"-"             {return(MINUS);}
"+"             {return(PLUS);}
"*"             {return(MULT);}
"/"             {return(DIV);}
"q"             {return(QUOC);}
"ç"             {return(CEDILHA);}
"se"             {return(IF);}
"enqnt"             {return(WHILE);}
"para"             {return(FOR);}
"senao"             {return(ELSE);}
"e"             {return(AND);}
"ou"             {return(OR);}
"/l"             {return(NEWLINE);}
"int"             {return(INT);}
"bool"             {return(BOOL);}
"vrdd"             {return(TRUE);}
"falso"             {return(FALSE);}
"var"             {return(VAR);}
"."             {return(DOT);}
"["             {return(OCLASP);}
"]"             {return(CCLASP);}
"=="             {return(EQUAL);}
">="             {return(BIGEQ);}
"<="             {return(LESSEQ);}
"+="             {return(PLUSEQ);}
"-="             {return(MINUSEQ);}
"*="             {return(MULTEQ);}
"/="             {return(DIVEQ);}
"q/"             {return(QUOCEQ);}
","             {return(COMMA);}
"tipo"             {return(TYPE);}
"+1"             {return(ADDONE);}
"-1"             {return(MINONE);}

.               {showError(); return(OTHER);}

%%
void showError(){
        printf("Other Input");
}

