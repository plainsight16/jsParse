module JsSyntax
extend Literals;

start syntax Statement
    = varDecl: VarDecl
    | funcStmt: FunctionStmt
    | \return: "return" Exp Semicolon?
    ;

syntax Semicolon = ";";

syntax FunctionStmt = "function" Identifier "("{Identifier","}* ")" "{"{Statement ""}*"}";
syntax VarDecl = Declarator Identifier "=" Exp Semicolon?;
syntax Declarator
    = let: "let"
    | const: "const";


syntax Exp
    = Identifier
    | Int
    | String
    > left Exp "+" Exp
    > left Exp "-" Exp
    ;