/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

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

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     DIGIT = 258,
     RELOP = 259,
     COMPOP = 260,
     HASH = 261,
     FROM = 262,
     NOT = 263,
     WHILE = 264,
     AS = 265,
     ELIF = 266,
     GLOBAL = 267,
     OR = 268,
     WITH = 269,
     ASSERT = 270,
     ELSE = 271,
     IF = 272,
     PASS = 273,
     YIELD = 274,
     BREAK = 275,
     EXPECT = 276,
     IMPORT = 277,
     PRINT = 278,
     CLASS = 279,
     EXEC = 280,
     IN = 281,
     RAISE = 282,
     CONTINUE = 283,
     FINALLY = 284,
     IS = 285,
     RETURN = 286,
     DEF = 287,
     FOR = 288,
     TRY = 289,
     OPBR = 290,
     CLBR = 291,
     OPSQ = 292,
     CLSQ = 293,
     OPCL = 294,
     CLCL = 295,
     US = 296,
     DQ = 297,
     STAR = 298,
     BL = 299,
     DOT = 300,
     CO = 301,
     COLLON = 302,
     ID = 303,
     SPACE = 304,
     NL = 305,
     STRING = 306,
     ADDOP = 307,
     MULOP = 308
   };
#endif
/* Tokens.  */
#define DIGIT 258
#define RELOP 259
#define COMPOP 260
#define HASH 261
#define FROM 262
#define NOT 263
#define WHILE 264
#define AS 265
#define ELIF 266
#define GLOBAL 267
#define OR 268
#define WITH 269
#define ASSERT 270
#define ELSE 271
#define IF 272
#define PASS 273
#define YIELD 274
#define BREAK 275
#define EXPECT 276
#define IMPORT 277
#define PRINT 278
#define CLASS 279
#define EXEC 280
#define IN 281
#define RAISE 282
#define CONTINUE 283
#define FINALLY 284
#define IS 285
#define RETURN 286
#define DEF 287
#define FOR 288
#define TRY 289
#define OPBR 290
#define CLBR 291
#define OPSQ 292
#define CLSQ 293
#define OPCL 294
#define CLCL 295
#define US 296
#define DQ 297
#define STAR 298
#define BL 299
#define DOT 300
#define CO 301
#define COLLON 302
#define ID 303
#define SPACE 304
#define NL 305
#define STRING 306
#define ADDOP 307
#define MULOP 308




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

