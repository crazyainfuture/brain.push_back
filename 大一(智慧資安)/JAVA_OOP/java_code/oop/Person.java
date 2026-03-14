public class Person {
    String id;
    String name;
    String gender;
    int age;
    String[] skills;
    final static String residence="taipei";

    //final String residence="new taipei";
    {id="abc";name="apple";gender=null;age=9999;}
    
    void show(){
        System.out.println(id);
        System.out.println(name);
        System.out.println(gender);
    }

    
    /*Person(){
        residence="ttt";
    }*/
    

    /*Person(String pid,String pname,String pgender,int page){
        id=pid;
        name=pname;
        gender=pgender;
        age=page;
    }
    Person(String pid,int page){
        id=pid;
        age=page;
    }*/
    Person(){
       
    }

    /*Person(String id,String name,String gender,int age){
        this.id=id;
        this.name=name;
        this.gender=gender;
        this.age=age;
    }
    Person(String id,int age){
        this.id=id;
        this.age=age;
    }*/
    /*void setskills(String...ss){
        skills=ss;
        System.out.println("My skills include: ");
        for(String i:skills){
            System.out.println(i);
        }
    }*/

}
