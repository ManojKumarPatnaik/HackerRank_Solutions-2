import java.util.Scanner;

/**
 * @author Oleg Cherednik
 * @since 13.09.2017
 */
public class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String S = in.next();
        int start = in.nextInt();
        int end = in.nextInt();
        System.out.println(S.substring(start, end));
    }
}
