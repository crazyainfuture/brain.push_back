public class main{
    public static void main(String[] args){

        //abstract修飾class無法創造物件
        //Employee e=new Employee();
    

        //Person.residence="taipei";
        System.out.println(Person.residence);

        Person p1=new Person();
        Person p2=new Person();
        //Person.imigrate("new taipei");
        System.out.println(p1.residence);
        System.out.println(p2.residence);

        /*p1.residence="taipei";
        System.out.println(p1.residence);
        System.out.println(p2.residence);
        System.out.println(p3.residence);

        Person p4=new Person();
        p2.imigrate("new taipei");
        System.out.println(p1.residence);
        System.out.println(p2.residence);
        System.out.println(p3.residence);
        System.out.println(p4.residence);*/

        //Person p=new Person("123456","kerry","male",20);
        /*Person p=new Person();
        System.out.println(p.id);
        System.out.println(p.name);
        System.out.println(p.gender);
        System.out.println(p.age);*/
        
        //constructor overloading
       /*Person p2=new Person("456789",15);
        System.out.println(p2.id);
        System.out.println(p2.age);*/
    
        //Person p3=new Person();
        //Employee e=new Employee();

        /*Person p1=new Person();
        p1.setskills("singing","dancing","swimming","playing the guitar");*/
    }   
}