import java.util.Scanner;
public class cpe2 {
    public static void main(String[] args) {
        Scanner scan=new Scanner(System.in);
        int a=scan.nextInt();
        count(a);
        
    }

    public static void count(int a) {
        int temp=0;
        while(a>0){
            temp+=a%10;
            a=a/10; 
        }
        if (temp>9) {
            count(temp);
        }
        else{
            System.out.println(temp);
        }
    }
    
}
