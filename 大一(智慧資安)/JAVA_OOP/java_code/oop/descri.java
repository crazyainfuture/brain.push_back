public class descri {
    public static void main(String[] args) {
        Tester t=new Tester();
        Programmer p=new Programmer();
        Artist a=new Artist();
        mutiskillemployee m=new mutiskillemployee();
        //m.name="kerry";
        //m.test();

        t.name="Ben";
        p.name="May";
        a.name="Candy";
        m.name="Kerry";

        System.out.println(t.Feature);
        System.out.println(p.Feature);
        System.out.println(a.Feature);
        System.out.println(m.Feature);
        
        Employee[] allemployees={t,p,a,m};
        for(Employee e:allemployees){
            if(e instanceof testabable ){
                System.out.println(e.name+" has ability of testing. ");
            }
            if(e instanceof programmable ){
                System.out.println(e.name+" has ability of coding. ");
            }
            if(e instanceof drawable ){
                System.out.println(e.name+" has ability of drawable. ");
            }
            if(e instanceof mutiskill ){
                System.out.println(e.name+" has all abilities. ");
            }
        }

        /*Employee e1=t; 
        Employee e2=p;
        Employee e3=a;*/

        /*t.salary=40000;
        p.salary=40000;
        a.salary=40000;
        System.out.println(t.getBonus());
        System.out.println(p.getBonus());
        System.out.println(a.getBonus());
        a.draw();*/
    }
}

