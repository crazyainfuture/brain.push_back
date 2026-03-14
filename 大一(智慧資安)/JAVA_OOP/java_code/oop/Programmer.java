class Programmer extends Employee implements programmable{
    public void code(){
        System.out.println("coding by "+name+".");
    }
    public void debug(){
        System.out.println("debugging by "+name+".");
    }
    void selfintro(){
        System.out.println("i am a programmer.");
        super.selfintro();
    }
    double getBonus(){
        return salary*3;
    }
}
