%{
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int yyparse();
extern FILE* yyin;


void  yyerror(const char* s);

%}

%token STRING 
%token NUM
%token OTHER
%token SEMICOLON
%token PIC
%token COLON
%token TIO
%token LESS
%token BIGGER
%token ASSIGN
%token MINUS
%token PLUS
%token MULT
%token DIV
%token QUOC
%token CEDILHA
%token IF
%token WHILE
%token FOR
%token ELSE
%token AND
%token OR
%token NEWLINE
%token INT
%token BOOL
%token TRUE
%token FALSE
%token VAR
%token DOT
%token OCLASP
%token CCLASP
%token EQUAL
%token BIGEQ
%token LESSEQ
%token PLUSEQ
%token MINUSEQ
%token MULTEQ
%token DIVEQ
%token QUOCEQ
%token COMMA
%token TYPE
%token ADDONE
%token MINONE


%type <name> STRING
%type <number> NUM
%type <name> PIC


%union{
        char name[20];
        int number;
}

%%

prog:
    exps
;

exps:
    | exp SEMICOLON exps
;
exp:
   STRING | NUM | OTHER
;
log_or_exp:
    log_or_exp | exp OR exp
;
log_and_exp:
    log_and_exp | exp AND exp
;
equ_exp:
   equ_exp | exp EQUAL exp
;
add_exp:
    add_exp | exp PLUS exp | exp MINUS exp
;

mult_exp:
    add_exp | exp MULT exp | exp DIV exp | exp QUOC exp
;

relational_exp:
    relational_exp | exp LESS exp | exp BIGGER exp | exp LESSEQ exp | exp BIGEQ exp
;
assign_exp:
    assign_exp | exp ASSIGN exp | exp MULTEQ exp | exp DIVEQ exp | exp QUOCEQ exp | exp PLUSEQ exp | exp MINUSEQ
;
iteration_stat:
    WHILE BIGGER exp LESS COLON exps COLON SEMICOLON | FOR BIGGER exp COMMA exp COMMA exp LESS COLON exps COLON SEMICOLON
;
comment:
    TIO TIO STRING | CEDILHA STRING CEDILHA
;
selection_stat:
    IF BIGGER exp LESS COLON exps COLON SEMICOLON | IF BIGGER exp LESS COLON exps COLON ELSE COLON exps COLON SEMICOLON 
;
cast:
    BIGGER TYPE LESS exp
;
function:
    STRING TYPE BIGGER VAR TYPE LESS COLON exps COLON SEMICOLON
;
postfix:
    exp OCLASP exp CCLASP | exp ADDONE | exp MINONE | exp DOT VAR;
%%
int main() {
	yyin = stdin;

	do {
		yyparse();
	} while(!feof(yyin));

	return 0;
}

void yyerror(const char* s)
{
       printf("Erro d sintaxe na linha %s\n",s);
       exit(1);
}
                                             
