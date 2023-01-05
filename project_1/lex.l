%option main
ALPHABET	[a-zA-Z]
DIGIT		[0-9]
SIGN		[+-]
SENSORNUM	[1-6]
ALPHANUMERIC	{ALPHABET}+{DIGIT}*
DIGITS		{SIGN}?{DIGIT}+
DOUBLES		{DIGITS}+(\.){DIGIT}+
SWITCH_		SWITCH_{DIGIT}
SENSOR		SENSOR{SENSORNUM}
COMMENT         [^:]\/\/.*
URL             ((http)|(ftp))s?:\/\/[a-zA-Z0-9]{2,}(\.[a-z0-9]{2,})+(\/[a-zA-Z0-9+=?])*
BOOL		bool
BOOLS		true|false
DOUBLE		double
INT		int
STRING		string
CHAR		char
IF		if
ELSE_IF		else_if
ELSE		else
FOR		for
WHILE		while
DO		do
SWITCH		switch
CASE		case
SEMICOLON	\;
COLON		\:
LP		\(
RP		\)
LB 		\{
RB		\}
PLUS		\+
MINUS		\-
MODULUS		\%
DIVIDE		\/
MULT		\*
EQPLUS		\+\=
EQMINUS		\-\=
EQMULT		\*\=
EQDIVIDE	\/\=
EQMODULE	\%\=
ASSIGN 		\=
GREATER		\>
SMALLER		\<	
COMMA		\,
RETURN		return
EQUAL		\=\=
BIGEQ		\>\=
SMALEQ		\<\=
NOTEQ		\!\=
CONST		ALPHANUMERIC|SENSOR|URL
QUOTE		\"
AND		\&\&
OR		\|\|
READDATA	readData
TIMESTAMP	timeStamp
SENDFUNC	sendFunc
RCVFUNC		rcvFunc
CONNECTFUNC	connectFunc
PROGRAM		program
SYMBOL          \+|\-|\_|\,|\;|\:|\.|\(|\)|\{|\}|\*|\/|\%|\=|\<|\>|\'|\@
STRINGS         \"{ALPHABET}*{DIGIT}*\"
CHARS           \'({ALPHABET}|{DIGIT})\'


%%
{PROGRAM}	printf("PROGRAM ");
{READDATA} 	printf("READDATA " );
{TIMESTAMP}	printf("TIMESTAMP ");
{SENDFUNC} 	printf("SENDFUNC ");
{RCVFUNC} 	printf("RCVFUNC ");
{CONNECTFUNC}	printf("CONNECTFUNC ");
{URL}           printf("URL ");
{COMMENT}	printf("COMMENT LINE ");
{RETURN} 	printf("RETURN ");

{IF}            printf("IF ");
{ELSE_IF}       printf("ELSE_IF ");
{ELSE}          printf("ELSE ");
{SWITCH_}        printf("SWITCH_ ");
{SENSOR}	printf("SENSOR ");
{CASE}		printf("CASE ");
{FOR}		printf("FOR ");
{WHILE}		printf("WHILE ");
{DO}		printf("DO ");

{QUOTE}		printf("QUOTE ");
{COLON}		printf("COLON ");
{LP}		printf("LP ");
{RP}		printf("RP ");
{RB}		printf("RB ");
{LB}		printf("LB ");
{PLUS}		printf("PLUS ");
{MINUS}		printf("MINUS ");
{MODULUS}	printf("MODULUS ");
{SEMICOLON}	printf("SEMICOLON ");
{DIVIDE}	printf("DIVIDE ");
{MULT}		printf("MULT ");
{EQPLUS}	printf("EQPLUS ");
{EQMINUS}	printf("EQMINUS ");
{EQMULT}	printf("EQMULT ");
{EQDIVIDE}	printf("EQDIVIDE ");
{EQMODULE}	printf("EQMODULE ");
{ASSIGN}	printf("ASSIGN ");
{COMMA}		printf("COMMA ");


{BOOL}		printf("BOOL ");
{INT}		printf("INT ");
{CHAR}		printf("CHAR ");
{STRING}	printf("STRING ");
{DOUBLE}	printf("DOUBLE ");
{CONST}		printf("CONST ");

{DIGITS}	printf("NUMBER ");
{BOOLS}		printf("BOOLS ");
{CHARS}		printf("CHARS ");
{STRINGS}	printf("STRINGS ");
{DOUBLES}	printf("DOUBLES ");

{GREATER}	printf("GREATER ");
{SMALLER} 	printf("SMALLER ");
{EQUAL} 	printf("EQUAL ");
{BIGEQ}		printf("BIGEQ ");
{SMALEQ}	printf("SMALEQ ");
{NOTEQ}		printf("NOTEQ ");
{AND}		printf("AND ");
{OR} 		printf("OR ");
{ALPHANUMERIC}	printf("IDENTIFIER ");

