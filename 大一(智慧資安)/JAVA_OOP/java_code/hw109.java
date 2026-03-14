import java.util.Scanner;
public class hw109 {
    public static void main(String[] args) {
        Scanner scan=new Scanner(System.in);
        int[] array=new int[10];
        int[] narr=new int[10];
        for(int i=0;i<10;i++){
            array[i]=scan.nextInt();
        }
       
        
        if(issb(array)){
            System.out.println("Ordered");
        }
        else{
            if(isbs(array)){
                System.out.println("Ordered");
            }
            else{
                System.out.println("Unordered");
            }
            
        }

        
        
        
        
        
    }
    public static boolean issb(int array[]){
        for(int i=0;i<array.length-1;i++){
            if(array[i]>array[i+1]){
                return false;
            }
            
        }
        return true;
        
        
    }
    
    public static boolean isbs(int array[]){
        for(int i=0;i<array.length-1;i++){
            if(array[i]<array[i+1]){
                return false;
            }
            
        }
        return true;
        
        
    }
}
