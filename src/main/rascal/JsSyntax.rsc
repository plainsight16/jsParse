module JsSyntax
extend Literals;

start syntax Statement
    = varDecl: VarDecl
    | funcStmt: FunctionStmt
    ;

syntax Semicolon = ";";

syntax FunctionStmt = "function" Identifier "("{Identifier","}* ")" "{"{Statement ""}* "return" Exp Semicolon?"}";
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