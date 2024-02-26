module Literals

extend lang::std::Layout;

lexical Identifier = ([a-z A-Z _] !<< [a-z A-Z _] [a-z A-Z 0-9 @ _ \-]* !>> [a-z A-Z 0-9 _]) \ Keyword;

lexical Int = [0-9]+ !>> [0-9];
lexical String = [\"] Char* [\"];

lexical LAYOUT = [\t-\n\r\ ];
layout LAYOUTLIST = LAYOUT* !>> [\t-\n\r\ ];

keyword Keyword 
    = "let" | "for" | "const";


lexical Char = ![\\ \" \n] | "\\" [\\ \"];