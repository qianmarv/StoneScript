package chap5;

import stone.*;
import stone.ast.*;
import java.io.*;

public class ParserRunner {
    public static void main(String[] args) throws ParseException {
        try{
            Reader fr = new FileReader(args[0]);
            Lexer lex = new Lexer(fr);
            BasicParser bp = new BasicParser();
            while (lex.peek(0) != Token.EOF) {
                ASTree ast = bp.parse(lex);
                System.out.println("=> " + ast.toString());
            }
        } catch (FileNotFoundException e){
            System.out.println("Error");
        }
    }
}
