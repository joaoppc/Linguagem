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
";"             {return(SC);}
":"             {return(OB);}
":;"             {return(CB);}
"~"             {return(TIO);}
"<"             {return(LESS);}
">"             {return(BIGGER);}
"="             {return(ASSIGN);}
"-"             {return(MINUS);}
"+"             {return(PLUS);}
"*"             {return(MULT);}
"/"             {return(DIV);}
"ç"             {return(BP);}
"#ç"             {return(EP);}
"se"             {return(IF);}
"enqnt"             {return(WHILE);}
"senao"             {return(ELSE);}
"e"             {return(AND);}
"ou"             {return(OR);}
"/n"             {return(NEWLINE);}
"int"             {return(INT);}
"bool"             {return(BOOL);}
"str"             {return(STR);}
"vrdd"             {return(TRUE);}
"falso"             {return(FALSE);}
"%"             {return(CONCAT);}
"nao"             {return(NOT);}
">>"             {return(OPEN);}
"<<"             {return(CLOSE);}
"=="             {return(EQUAL);}
","             {return(COMMA);}
"printar"       {return(PRINT);}
"ler"           {return(READ);}
"retorna"       {return(RETURN);}
"funcao"        {return(FUNC);}
"\t"            {return(TAB);}


.               {showError(); return(OTHER);}

%%
void showError(){
        printf("Other Input");
}

