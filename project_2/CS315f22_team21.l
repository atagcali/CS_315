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
CONST		ALPHANUMERIC|SENSOR|URL|DOUBLES|STRINGS|CHARS|DIGITS
QUOTE		\"
AND		\&\&
OR		\|\|
READDATA	readData
TIMESTAMP	timeStamp
SENDFUNC	sendFunc
RCVFUNC		rcvFunc
CONNECTFUNC	connectFunc
PROGRAM		program
SWITCHON	switchOn
SWITCHOFF	switchOff
SYMBOL          \+|\-|\_|\,|\;|\:|\.|\(|\)|\{|\}|\*|\/|\%|\=|\<|\>|\'|\@
STRINGS         \"{ALPHABET}*{DIGIT}*\"
CHARS           \'({ALPHABET}|{DIGIT})\'


%%
{PROGRAM}	return PROGRAM;
\n		yylineno++;
{READDATA} 	return READDATA;
{SWITCHON}	return SWITCHON;
{SWITCHOFF}	return SWITCHOFF;
{TIMESTAMP}	return TIMESTAMP;
{SENDFUNC} 	return SENDFUNC;
{RCVFUNC} 	return RCVFUNC;
{CONNECTFUNC}	return CONNECTFUNC;
{URL}           return URL;
{COMMENT}	return COMMENT;
{RETURN} 	return RETURN;

{IF}            return IF;
{ELSE_IF}       return ELSE_IF;
{ELSE}          return ELSE;
{SWITCH_}       return SWITCH_;
{SENSOR}	return SENSOR;
{CASE}		return CASE;
{SWITCH}	return SWITCH;
{FOR}		return FOR;
{WHILE}		return WHILE;
{DO}		return DO;

{QUOTE}		return QUOTE;
{COLON}		return COLON;
{LP}		return LP;
{RP}		return RP;
{RB}		return RB;
{LB}		return LB;
{PLUS}		return PLUS;
{MINUS}		return MINUS;
{MODULUS}	return MODULUS;
{SEMICOLON}	return SEMICOLON;
{DIVIDE}	return DIVIDE;
{MULT}		return MULT;
{EQPLUS}	return EQPLUS;
{EQMINUS}	return EQMINUS;
{EQMULT}	return EQMULT;
{EQDIVIDE}	return EQDIVIDE;
{EQMODULE}	return EQMODULE;
{ASSIGN}	return ASSIGN;
{COMMA}		return COMMA;


{BOOL}		return BOOL;
{INT}		return INT;
{CHAR}		return CHAR;
{STRING}	return STRING;
{DOUBLE}	return DOUBLE;
{CONST}		return CONST;

{DIGITS}	return NUMBER;
{BOOLS}		return BOOLS;
{CHARS}		return CHARS;
{STRINGS}	return STRINGS;
{DOUBLES}	return DOUBLES;


{GREATER}	return GREATER;
{SMALLER} 	return SMALLER;
{EQUAL} 	return EQUAL;
{BIGEQ}		return BIGEQ;
{SMALEQ}	return SMALEQ;
{NOTEQ}		return NOTEQ;
{AND}		return AND;
{OR} 		return OR;
{ALPHANUMERIC}	return IDENTIFIER;
%%
int yywrap() { return 1; }
