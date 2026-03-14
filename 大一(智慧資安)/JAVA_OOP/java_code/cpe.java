import java.util.Scanner;
public class cpe {
    public static void main(String[] args) {
        Scanner scan =new Scanner(System.in);
        int a=scan.nextInt();
        int b=scan.nextInt();
        int count=0;
        /*if(a==0 ||b==0){
            break;
        }*/
        
        for (int i=a;i<=b;i++){
            for(int k=1;k<=i;k++){
                if(i==k*k){
                    count++;
                }
            }
          
        }
        System.out.println(count);
    }
}
