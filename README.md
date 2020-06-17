# Linguagem JP

A Linguagem JP é voltada para o público falante da lingua Portuguesa, com keywords em português que facilitam uma pessoa que não fala inglês.
Também utiliza caracteres da linguagem portuguesa, facilitando assim o uso por falanes da lingua.

A linguagem tem a vantagem de utilizar algumas sequencias de caracteres que estão próximos como o ":;", '~^','>>', '<<' agilizando assim o uso da linguagem.

A linguagem possui definição e utilização de funções, declaração e atribuição de variáveis, executa expressões relacionais, aritméticas,lógicas, de output e input. Também tem a opção de comentar.

A interpretação é feita através do python.

### exemplo de código:

```
ç
:
funcao soma>>a,b<<:
    &c = &a+&b;
    printar &c; 
    retorna &c;
:;
&d = soma>>1,2<<;
printar &d;
&h = 4;
enqnt>>&h>1<<:
&h = &h - 1;
printar &h;
:;
:;
~comentario^~

#ç
```
```
output:

3
3
3
2
1
```


Para futuros updates da línguagem, pode ser implementada tipagem das variáveis/funções, listas, vetores e manipulação de memória com ponteiros/ endereços e mais operações de atribuição.



## EBNF
- program = "ç" block "#ç"
- block = ":" declaration statements ':;'
- declaration = variable-declaration | function declaration
- variable-declaration = variable-identifier assignment-statement
- function-declaration = "funcao" function
- function = function-identifier ">>" parameter {','parameter} "<<"
- parameters = identifier
- assignment-statement = variable-identifier|function-identifier '=' expression
- identifier =  letter { letter | number }
- variable-identifier =  '&'  letter | number 
- function-identifier = letter { letter | number }
- statements = statement{';' statement}
- while-statement = 'enqnt' '>>' expression '<<' statement
- if-statement = 'se' '>>' expression '<<' statement['senao' statement]
- relational-expression = expression{rel-op expression}
- expression = term{ add-op term}
- term = factor{mult-op factor}
- factor = variable | number | string | function identifier | ">>" expression "<<" | 'nao' factor  
- add-op = '+'|'-'|'ou'|'%'
- mult-op = '*'|'/'|'and'
- rel-op = '>'|'='|'<'
- print-statement = 'printar' expression ';'
- readline-statement = 'ler' input-value
- comment = "~" ... '^~'
- letter = [a-zA-Z]
- number = [0-9]

