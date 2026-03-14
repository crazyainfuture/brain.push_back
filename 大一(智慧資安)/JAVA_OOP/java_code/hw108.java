import java.util.Scanner;

public class hw108 {
    public static void main(String[] args) {
        Scanner scanner=new Scanner(System.in);
        String number=scanner.nextLine();

        int sum=0;
        for (int i=0;i<number.length();i++) {
            int digit=Character.getNumericValue(number.charAt(i));//字元轉整數（例如 '5' → 5）
            if(i%2==0){
                sum+=digit;
            }
          	else{
            	sum-=digit;
            }
        }
      
        if(sum%11==0){
            System.out.println(number+" is a multiple of 11.");
        }
      	else{
            System.out.println(number+" is not a multiple of 11.");
        }
    }
}
