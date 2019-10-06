package chap3;
import stone.*;
import java.io.*;

public class LexerRunner {
    public static void main(String[] args) throws ParseException {
        try{
            Reader fr = new FileReader(args[0]);
            Lexer l = new Lexer(fr);
            for (Token t; (t = l.read()) != Token.EOF; ){
                String sType = "Undefined Type";               
                if(t.isIdentifier()){
                    sType = "Identifier";
                }else if(t.isNumber()){
                    sType = "Number";
                }else if(t.isString()){
                    sType = "String";
                }
                System.out.println(t.getLineNumber() + " => " + sType + ": " + t.getText());
            }
        } catch (FileNotFoundException e){
            System.out.println("Error");
        }
    }
}
