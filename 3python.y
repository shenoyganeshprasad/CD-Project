%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
int yyerror();
extern FILE *yyin;
%}

%token DIGIT RELOP COMPOP HASH FROM NOT WHILE AS ELIF GLOBAL OR WITH ASSERT ELSE IF PASS YIELD BREAK EXPECT IMPORT PRINT CLASS EXEC IN RAISE CONTINUE FINALLY IS RETURN DEF FOR  TRY OPBR CLBR OPSQ CLSQ OPCL CLCL US DQ STAR BL DOT CO COLLON ID SPACE NL STRING ADDOP MULOP

%%
START:      PRG NL
            ;

PRG:        FUNCDEF 
            | IFSTMT
            | PRINTSTMT
            | WHILESTMT
            | DECL
            | FORSTMT
            | COMMENT
            | CLASSDEF
            | STRINGDECL
            | RETURNSTMT
            | IMPORTSTMT
            ;

IMPORTSTMT: IMPORT ID NL PRG
            | FROM ID IMPORT ID NL PRG
            ;

COMMENT:    HASH STRING NL PRG
            ;

CLASSDEF:   CLASS CLASSNAME COLLON CLASSDEF
            | NL PRG
            ;

CLASSNAME:  ID
            ;

FUNCDEF:    DEF FNAME OPBR PARAMETER CLBR COLLON FUNCDEF
            | NL PRG
            |
            ;

FNAME:      ID
            ;

PARAMETER:  ID
            | ID CO PARAMETER
            |
            ;

RETURNSTMT: RETURN ID RETURNSTMT
            | RETURN CONDEXP RETURNSTMT
            | NL PRG
            | 
            ;

DECL:       INTDECL
            | STRINGDECL
            ;

INTDECL:    ID COMPOP DIGIT DECL
            | ID COMPOP ID COMPOP ID NL PRG
            | NL PRG
            ;

STRINGDECL: ID COMPOP STRINGNAME 
            ;
    
STRINGNAME: STRING NL PRG
            ;

IFSTMT:     IF CONDEXP COLLON NL PRINTSTMT IFSTMT
            | ELIF CONDEXP COLLON NL PRINTSTMT IFSTMT
            | ELSE COLLON NL PRINTSTMT IFSTMT
            | NL PRG
            |
            ;

CONDEXP:    DIGIT RELOP DIGIT
            | DIGIT COMPOP DIGIT
            | ID COMPOP ID
            | ID COMPOP DIGIT
            | ID ADDOP ID
            | ID ADDOP DIGIT
            ;

PRINTSTMT:  PRINT OPBR STRING CLBR
            | PRINT OPBR STRING CO FNAME OPBR PARAMETER CLBR CLBR
            ;

WHILESTMT:  WHILE ID COMPOP DIGIT NL PRINTSTMT WHILESTMT
            | NL PRG
            ;

FORSTMT:    FOR ID IN ID COLLON NL FORSTMT PRINTSTMT FORSTMT
            | NL PRG
            |
            ;
%%

int yyerror(char *msg){
    printf("\nInvalid Exp : %s\n", msg);
    return 1;
}

int main(){
    yyin = fopen("newinput.py", "r");

    do{
        if(yyparse()){
            printf("\nFail\n");
            exit(0);
        }
    }while(!feof(yyin));

    printf("\nSuccess\n");
    return 0;
}