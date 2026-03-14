import java.util.Scanner;
public class hw106{
    public static void main(String[] args) {
        Scanner scan=new Scanner(System.in);
        int n=scan.nextInt();

        int[] array=new int[n];
        for(int i=0;i<n;i++){
            array[i]=scan.nextInt();
        }
        sort(array,n);
    }

    
    public static void sort(int array[],int n){
        int temp;
        for(int i=0;i<n;i++){
            for(int j=0;j<n-1-i;j++){
                if(array[j]<array[j+1]){
                    temp=array[j];
                    array[j]=array[j+1];
                    array[j+1]=temp;
                }
                
            }
            
        }
        for(int k=0;k<n;k++){
            System.out.println(array[k]);
        }
        int max=array[0];
        int min=array[n-1];
        double mid=(double) (max+min)/2;
        int ans=(int) ((array[0]-mid)*4);
        System.out.println(ans);
        
    }
}