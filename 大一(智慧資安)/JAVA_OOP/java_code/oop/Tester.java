class Tester extends Employee implements testabable{
    public void test(){
        System.out.println("testing by "+name+".");
    }
    void selfintro(){
        System.out.println("i am a tester.");
        super.selfintro();
    }
    double getBonus(){
        return salary*1.5;
    }
}
