import java.util.Scanner;

class hww{
	public static void main(String args[]){	
		Scanner scan=new Scanner(System.in);
		
		while(scan.hasNextLine()){
			
			String str=scan.nextLine();
			
			int arr[]=new int[127];
			int max=0;
			for(int i=0;i<str.length();i++) arr[str.charAt(i)]++;
			for(int i=0;i<arr.length;i++) if(arr[i]>max) max=arr[i]; 
		
			for(int i=1;i<=max;i++){
				for(int j=arr.length-1;j>=0;j--){
					if(arr[j]==i)System.out.println(j+" "+arr[j]);
				}
			}
		}
	}
}
