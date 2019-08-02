package stone;
import java.io.*;

public class LexerRunner {
    public static void main(String[] args) throws ParseException {
        try{
            Reader fr = new FileReader("./aa.txt");
            Lexer l = new Lexer(fr);
            for (Token t; (t = l.read()) != Token.EOF; ){
                System.out.println("=> " + t.getText());
            }
        } catch (FileNotFoundException e){
            System.out.println("Error");
        }
    }
}
