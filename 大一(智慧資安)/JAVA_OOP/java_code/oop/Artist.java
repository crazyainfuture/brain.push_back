class Artist extends Employee implements drawable {
    public void draw(){
        System.out.println("drawing by "+name+".");
    }
    void selfintro(){
        System.out.println("i am a artist.");
        super.selfintro();
    }
    double getBonus(){
        return salary*2;
    }
}
