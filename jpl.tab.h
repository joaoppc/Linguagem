/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

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

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

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
    SC = 260,
    COLON = 261,
    TIO = 262,
    LESS = 263,
    BIGGER = 264,
    ASSIGN = 265,
    MINUS = 266,
    PLUS = 267,
    MULT = 268,
    DIV = 269,
    BP = 270,
    EP = 271,
    OB = 272,
    CB = 273,
    IF = 274,
    WHILE = 275,
    ELSE = 276,
    AND = 277,
    OR = 278,
    NEWLINE = 279,
    INT = 280,
    BOOL = 281,
    STR = 282,
    TRUE = 283,
    FALSE = 284,
    CONCAT = 285,
    NOT = 286,
    OPEN = 287,
    CLOSE = 288,
    EQUAL = 289,
    COMMA = 290,
    PRINT = 291,
    READ = 292,
    RETURN = 293,
    FUNC = 294,
    TAB = 295,
    OTHER = 296
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 60 "jpl.y"

        char name[20];
        int number;

#line 104 "jpl.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_JPL_TAB_H_INCLUDED  */
