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
%token SC
%token COLON
%token TIO
%token LESS
%token BIGGER
%token ASSIGN
%token MINUS
%token PLUS
%token MULT
%token DIV
%token BP
%token EP
%token OB
%token CB
%token IF
%token WHILE
%token ELSE
%token AND
%token OR
%token NEWLINE
%token INT
%token BOOL
%token STR
%token TRUE
%token FALSE
%token CONCAT
%token NOT
%token OPEN
%token CLOSE
%token EQUAL
%token COMMA
%token PRINT
%token READ
%token RETURN
%token FUNC
%token TAB
%token OTHER


%type <name> STRING
%type <number> NUM



%union{
        char name[20];
        int number;
}

%%

prog:
    BP block BP
;

block:
    | OB declaration statement CB
;
declaration:
   variableDeclaration | functionDeclaration
;
variableDeclaration:
    variableIdentifier assignmentStatement SC
;
functionDeclaration:
    FUNC function 
;
parameters:
    | parameter COMMA parameter
;
function:
   functionIdentifier OPEN parameters CLOSE statements
;
parameter:
    STRING | NUM
;

functionIdentifier:
   |STRING STRING | NUM
;

variableIdentifier:
    | STRING STRING | NUM 
;
assignmentStatement:
    variableIdentifier|functionIdentifier ASSIGN expression
;
statements:
    | statement SC statement 
;
statement:
    whileStatement | ifStatement | assignmentStatement | printStatement
;
whileStatement:
    WHILE OPEN expression CLOSE statements
;
ifStatement:
    IF OPEN expression CLOSE statements |IF OPEN expression CLOSE statements ELSE statements 
;
factor:
variableIdentifier | NUM | STRING | functionIdentifier | OPEN expression CLOSE | NOT factor 
;
relationalExpression:
    | expression relOp expression 
;
expression:
    |term  addOp term 
;
term:
    | factor  multOp factor 
;
addOp:
    PLUS | MINUS | OR | CONCAT
;
multOp:
    MULT | DIV | AND
;
relOp:
    BIGGER | LESS | EQUAL
;
printStatement:
    PRINT expression SC
;

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
                                             
