/* program to count the number of lines,spaces,words,characters in a given input file
%{
#include <stdio.h>
int c=0,w=0,l=0,s=0;
%}
%%
[ \t]+ {s++;}
[a-zA-Z]+ {w++;c=c+yyleng;} // [^ \n\t] can also be used
\n {l++;}
. {c++;}
%%
main()
{

yyin=fopen("sample.txt","r");
yylex();
printf("no of spaces=%d\n",s);
printf("no of words=%d\n",w);
printf("no of lines=%d\n",l);
printf("no of chars=%d\n",c);
}
