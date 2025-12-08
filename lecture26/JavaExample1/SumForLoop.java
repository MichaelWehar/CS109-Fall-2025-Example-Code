import java.util.Scanner;
public class SumForLoop {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		int n = s.nextInt();
		// For Loop
		int sum = 0;
		for(int i = 1; i <= n; i++) {
			sum += i;
		}
		System.out.println("Sum = " + sum);
	}
}
