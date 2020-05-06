import java.util.Scanner;

/**
 * @author Oleg Cherednik
 * @since 05.07.2018
 */
public class Solution {

    static long solve(long n) {
        if (n == 0)
            return 1;

        int i = 0;

        do {
            i += (n & 0x1) == 0 ? 1 : 0;
        } while ((n >>= 1) > 0);

        return (long)Math.pow(2, i);
    }

    private static final Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        long n = scanner.nextLong();
        scanner.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        long result = solve(n);
        System.out.println(String.valueOf(result));

        scanner.close();
    }
}
