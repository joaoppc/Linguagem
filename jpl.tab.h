/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_JPL_TAB_H_INCLUDED
# define YY_YY_JPL_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    STRING = 258,
    NUM = 259,
    OTHER = 260,
    SEMICOLON = 261,
    PIC = 262,
    COLON = 263,
    TIO = 264,
    LESS = 265,
    BIGGER = 266,
    ASSIGN = 267,
    MINUS = 268,
    PLUS = 269,
    MULT = 270,
    DIV = 271,
    QUOC = 272,
    CEDILHA = 273,
    IF = 274,
    WHILE = 275,
    FOR = 276,
    ELSE = 277,
    AND = 278,
    OR = 279,
    NEWLINE = 280,
    INT = 281,
    BOOL = 282,
    TRUE = 283,
    FALSE = 284,
    VAR = 285,
    DOT = 286,
    OCLASP = 287,
    CCLASP = 288,
    EQUAL = 289,
    BIGEQ = 290,
    LESSEQ = 291,
    PLUSEQ = 292,
    MINUSEQ = 293,
    MULTEQ = 294,
    DIVEQ = 295,
    QUOCEQ = 296,
    COMMA = 297,
    TYPE = 298,
    ADDONE = 299,
    MINONE = 300
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 64 "jpl.y" /* yacc.c:1909  */

        char name[20];
        int number;

#line 105 "jpl.tab.h" /* yacc.c:1909  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_JPL_TAB_H_INCLUDED  */
