import java.util.Scanner;

public class hw107 {
    public static void main(String[] args) {
        Scanner scan=new Scanner(System.in);
        long n=scan.nextInt();

        long rank=(n+1)/2; 
        long start=2*(rank-1)*(rank-1)+1; 

        long sum = 0;
        for (long i=n-3;i<n;i++) {
            sum+=start+i*2;
        }

        System.out.println(sum);
    }
}
