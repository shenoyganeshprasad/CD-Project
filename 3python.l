%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "3python.tab.h"
%}

%%
[0-9]+ {return DIGIT;}
"#" {return HASH;}
"from"  {return FROM;}
"while"  {return WHILE;}
"as"  {return AS;}
"elif"  {return ELIF;}
"global"  {return GLOBAL;}
"or"  {return OR;}
"with"  {return WITH;}
"assert"  {return ASSERT;}
"else"  {return ELSE;}
"if"  {return IF;}
"pass"  {return PASS;}
"yield"  {return YIELD;}
"break"  {return BREAK;}
"expect"  {return EXPECT;}
"import"  {return IMPORT;}
"print"  {return PRINT;}
"class"  {return CLASS;}
"exec"  {return EXEC;}
"in"  {return IN;}
"raise"  {return RAISE;}
"continue"  {return CONTINUE;}
"finally"  {return FINALLY;}
"is" {return IS;}
"return" {return RETURN;}
"def" {return DEF;}
"for" {return FOR;}
"try" {return TRY;}
"(" {return OPBR;}
")" {return CLBR;}
"[" {return OPSQ;}
"]" {return CLSQ;}
"{" {return OPCL;}
"}" {return CLCL;}
"_" {return US;}
"*" {return STAR;}
"." {return DOT;}
"," {return CO;}
":" {return COLLON;}
"'" {return DQ;}
"+="|"-="|"*="|"/="|"%="|"**="|">>="|"<<="|"&="|"^=" {return RELOP;}
"<"|">"|"="|">="|"<="|"<>"|"!=" {return COMPOP;}
("+"|"-") {return ADDOP;}
("*"|"/"|"%") {return MULOP;}
"\n" {return NL;}
[a-zA-Z][a-zA-Z0-9_]* {printf("%s\n\t",yytext);return ID;}
\"(.)*\" {return STRING;}
%%
int yywrap(){
    return 1;
}
