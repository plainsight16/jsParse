module Parse

import JsSyntax;

import ParseTree;


public Statement parseJs(str txt){
    return parse(#Statement, txt);
}

public Statement parseJs(loc txt){
    return parse(#Statement, txt);
}