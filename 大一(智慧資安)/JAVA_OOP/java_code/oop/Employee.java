abstract class Employee extends Person {
    String employeeid;
    int salary;
    /*Employee(String pemployeeid,int psalary,String pid,String pname,String pgender,int page){
        super();
        employeeid= pemployeeid;
        salary=psalary;
    }
    Employee(){
        super();
        System.out.println("123456");
    }*/
    void selfintro(){
        //super.selfintro();
        System.out.println("my employeeid number is"+employeeid+".");
        System.out.println("my salary is "+employeeid+".");
    }
    /*double getBonus(){
        return salary*0.8;
    }*/
    //abstract double getBonus();
}
