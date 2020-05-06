import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author Oleg Cherednik
 * @since 08.10.2017
 */
public class Solution {
    public static void main(String... args) {
        Regex_Test tester = new Regex_Test();
        tester.checker("^([a-z])(\\w)(\\s)(\\W)(\\d)(\\D)([A-Z])([A-Za-z])([aeiouAEIOU])(\\S)\\1\\2\\3\\4\\5\\6\\7\\8\\9\\10$");
    }
}

class Regex_Test {
    public void checker(String Regex_Pattern) {
        Scanner Input = new Scanner(System.in);
        String Test_String = Input.nextLine();
        Pattern p = Pattern.compile(Regex_Pattern);
        Matcher m = p.matcher(Test_String);
        System.out.println(m.find());
    }
}
