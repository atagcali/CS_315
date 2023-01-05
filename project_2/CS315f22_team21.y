%token		PROGRAM
%token		READDATA
%token		 TIMESTAMP SENDFUNC RCVFUNC CONNECTFUNC SWITCHON SWITCHOFF
%token		URL 
%token		COMMENT
%token		RETURN
%token		IF ELSE_IF ELSE 
%token		SWITCH CASE
%token		SENSOR SWITCH_
%token		FOR WHILE DO
%token		QUOTE COLON LP RP RB LB 
%token		PLUS MINUS MODULUS SEMICOLON DIVIDE MULT
%token		EQPLUS EQMINUS EQMULT EQDIVIDE EQMODULE
%token		ASSIGN COMMA
%token 		BOOL INT CHAR STRING DOUBLE CONST
%token		NUMBER BOOLS CHARS STRINGS DOUBLES 
%token		GREATER SMALLER EQUAL BIGEQ SMALEQ NOTEQ AND OR 
%token 		IDENTIFIER	
%%
program: PROGRAM LB stmts RB
;
stmts: empty |  stmts stmt
;
stmt: function_stmts | nonFunc_stmts  
;
nonFunc_stmts: cond_stmts
  | loop_stmts
  | op_stmts  
  | COMMENT 
;
cond_stmts: if_stmts | swCase_stmt
	  ;
loop_stmts: for_stmt | while_stmt | do_stmt
	  ;
op_stmts: declaration_stmt
	| assign_stmt
	| arOp_stmt
;
if_stmts: if_stmt | if_stmt elses
	;
elses: else  | else_if elses 
     ;
swCase_stmt: switch caseList
	   ;
caseList: case | case caseList | default
	;

function_stmts: primitiveFunction 
		|nonPrimitiveFunction
;
primitiveFunction: readDATA
		| timeSTAMP
		|sendFUNC
		|rcvFUNC
 		| connectFUNC
		| switchON 
		| switchOFF
;
nonPrimitiveFunction: func_dec
 		 | func_call			
;
if_stmt: IF LP expr RP LB stmts RB
       ;
else_if: ELSE_IF LP expr RP LB stmts RB;

else: ELSE LB stmts RB
;
switch: SWITCH LP expr RP;
case: CASE LP NUMBER RP LB stmts RB;
default: LB stmts RB;

for_stmt: FOR LP assign_stmt SEMICOLON expr SEMICOLON arOp_stmt RP LB stmts RB;
while_stmt: WHILE LP expr RP LB stmts RB;
do_stmt: DO LB stmts RB WHILE LP expr RP;

declaration_stmt: var IDENTIFIER | var IDENTIFIER COMMA declaration_stmt;
assign_stmt: var IDENTIFIER ASSIGN const 
	   | var IDENTIFIER ASSIGN IDENTIFIER
	 | IDENTIFIER ASSIGN IDENTIFIER
           | IDENTIFIER ASSIGN const
	   | var IDENTIFIER ASSIGN IDENTIFIER arOp IDENTIFIER
	   | var IDENTIFIER ASSIGN IDENTIFIER arOp const
	   | var IDENTIFIER ASSIGN const arOp IDENTIFIER |
	   var IDENTIFIER ASSIGN const PLUS const;
arOp_stmt: IDENTIFIER ASSIGN IDENTIFIER arOp IDENTIFIER
 	    | IDENTIFIER ASSIGN IDENTIFIER arOp const
   	    | IDENTIFIER ASSIGN const arOp const
	    | IDENTIFIER arAssign const
	    | IDENTIFIER arAssign IDENTIFIER
	    
;
arOp: arAssign
	|additive
	|multiplicative
;
bool_Op: OR
	| AND
	| equality
	| relational
;
expr: IDENTIFIER bool_Op IDENTIFIER
| IDENTIFIER
| IDENTIFIER bool_Op const
| const bool_Op IDENTIFIER
| const bool_Op const
| const
| IDENTIFIER bool_Op IDENTIFIER bool_Op expr
| IDENTIFIER bool_Op const bool_Op expr
| const bool_Op IDENTIFIER bool_Op expr
| const bool_Op const bool_Op expr
| IDENTIFIER arOp IDENTIFIER bool_Op expr
| IDENTIFIER arOp const bool_Op expr
| const arOp IDENTIFIER bool_Op expr
| const arOp const bool_Op expr
;

parameters:empty|
	   IDENTIFIER
	  |const
	  |const COMMA parameters
	  |IDENTIFIER COMMA parameters
	  |SENSOR
	  |URL
;
readDATA: READDATA LP SENSOR RP;
timeSTAMP: TIMESTAMP LP RP;
sendFUNC: SENDFUNC LP NUMBER COMMA URL RP;
rcvFUNC: RCVFUNC LP URL RP;
connectFUNC: CONNECTFUNC LP URL RP;
switchON: SWITCHON LP SWITCH_ RP;
switchOFF: SWITCHOFF LP SWITCH_ RP;


func_dec: var IDENTIFIER LP declaration_stmt RP LB stmts return IDENTIFIER RB;
func_call: IDENTIFIER LP parameters RP;


equality: EQUAL | NOTEQ;
relational: GREATER | SMALLER | SMALEQ | BIGEQ;

additive: PLUS | MINUS;
multiplicative: MULT | DIVIDE | MODULUS;
arAssign: EQPLUS | EQMINUS | EQMULT | EQDIVIDE | EQMODULE;
const: BOOLS | CHARS | STRINGS | DOUBLES | NUMBER
  
var: INT | BOOL | STRING | CHAR | DOUBLE;
return: RETURN;
empty: ;      
%%
#include "lex.yy.c"
int main() {
      return yyparse();
    }
    int yyerror( char *s ) { fprintf( stderr, "Error | Line: %d\n%s\n",yylineno,s); }
