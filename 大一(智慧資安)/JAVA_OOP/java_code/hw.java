import java.util.Scanner;
public class hw {
    public static void main(String[] args){
        Scanner scan=new Scanner(System.in);
        int size=scan.nextInt();
        int[] array=new int[size];
        for(int i=0;i<size;i++){
            int number=scan.nextInt();
            array[i]=number;
        }
       
        sort(array,size);
        countmethod(array, size);
        
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
    }
    
    public static void countmethod(int array[],int n){
        int count=0;
        for(int k=2;k<n;k+=3) {
            count+=array[k];
            
        }
        
        System.out.println(count);
        
    }
}

