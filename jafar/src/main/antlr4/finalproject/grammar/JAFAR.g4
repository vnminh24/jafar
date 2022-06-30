grammar JAFAR;

/** JAFAR program. */
program
    : PROGRAM ID SEMI body EOF // program basic; int x; {something}
    ;

/** Body of a program. */
body
    : decl* block
    ;

/** Variable declaration block. */
decl: (var SEMI)+                  #varDecl //int x,y; bool check;
    ;

/** Variable declaration. */
var : type ID (COMMA ID)* //int x,y
    ;

/** Grouped sequence of statements. */
block
    : BEGIN (decl)* (stat)+ END //{ a:=b; x:= x+1;}
    ;

/** Statement. */
stat: target ASS expr SEMI                #assStat // x:= 1;
    | IF expr COLON block (ELSE block)? #ifStat // if (a == b): {thenpart} else {elsepart}
    | WHILE expr COLON block             #whileStat // while (a == b): {}
    | block                          #blockStat
    | PARBEGIN COLON (block)+ PAREND SEMI      #threadStat
    | LOCK LPAR RPAR SEMI           #lockStat
    | UNLOCK LPAR RPAR SEMI         #unlockStat
    ;

/** Target of an assignment. */
target
    : ID               #idTarget
    ;

/** Expression. */
expr: prfOp expr        #prfExpr
    | expr multOp expr  #multExpr
    | expr plusOp expr  #plusExpr
    | expr compOp expr  #compExpr
    | expr boolOp expr  #boolExpr
    | LPAR expr RPAR    #parExpr
    | ID                #idExpr
    | NUM               #numExpr
    | TRUE              #trueExpr
    | FALSE             #falseExpr
    ;

/** Prefix operator. */
prfOp: MINUS | NOT;

/** Multiplicative operator. */
multOp: STAR;

/** Additive operator. */
plusOp: PLUS | MINUS;

/** Boolean operator. */
boolOp: AND | OR;

/** Comparison operator. */
compOp: LE | LT | GE | GT | EQ | NE;

/** Data type. */
type: INTEGER  #intType
    | BOOLEAN  #boolType
    ;

// Keywords
AND:     A N D;
BEGIN:   LBRACE;
BOOLEAN: B O O L;
INTEGER: I N T;
ELSE:    E L S E ;
END:     RBRACE;
EXIT:    E X I T ;
FALSE:   F A L S E ;
FUNC:    F U N C T I O N ;
IF:      I F ;
INPUT:   I N P U T;
NOT:     EXPLNMARK;
OR:      O R ;
PRINT:   P R I N T ;
PROC:    P R O C E D U R E ;
PROGRAM: P R O G R A M ;
TRUE:    T R U E ;
WHILE:   W H I L E ;
THREAD:  T H R E A D ;
PARBEGIN:P A R B E G I N;
PAREND:  P A R E N D;
LOCK: L O C K;
UNLOCK: U N L O C K;
ASS:    ':=';
COLON:  ':';
COMMA:  ',';
DQUOTE: '"';
EQ:     '==';
GE:     '>=';
GT:     '>';
LE:     '<=';
LBRACE: '{';
LPAR:   '(';
LT:     '<';
MINUS:  '-';
NE:     '!=';
PLUS:   '+';
RBRACE: '}';
RPAR:   ')';
SEMI:   ';';
SLASH:  '/';
STAR:   '*';
EXPLNMARK: '!';

// Content-bearing token types
ID: LETTER (LETTER | DIGIT)*;
NUM: DIGIT (DIGIT)*;
STR: DQUOTE .*? DQUOTE;

fragment LETTER: [a-zA-Z];
fragment DIGIT: [0-9];

// Skipped token types
COMMENT: (SLASH SLASH .*? '\n') -> skip;
WS: [ \t\r\n]+ -> skip;

fragment A: [aA];
fragment B: [bB];
fragment C: [cC];
fragment D: [dD];
fragment E: [eE];
fragment F: [fF];
fragment G: [gG];
fragment H: [hH];
fragment I: [iI];
fragment J: [jJ];
fragment K: [kK];
fragment L: [lL];
fragment M: [mM];
fragment N: [nN];
fragment O: [oO];
fragment P: [pP];
fragment Q: [qQ];
fragment R: [rR];
fragment S: [sS];
fragment T: [tT];
fragment U: [uU];
fragment V: [vV];
fragment W: [wW];
fragment X: [xX];
fragment Y: [yY];
fragment Z: [zZ];
