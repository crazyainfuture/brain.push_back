public interface mutiskill extends testabable,drawable,programmable{
    public static final String Feature="god??";
}
class mutiskillemployee extends Employee implements mutiskill{
    public void test(){
        System.out.println("testing by "+name+".");
    }
    public void code(){
        System.out.println("coding by "+name+".");
    }
    public void debug(){
        System.out.println("debugging by "+name+".");
    }
    public void draw(){
        System.out.println("drawing by "+name+".");
    }
}