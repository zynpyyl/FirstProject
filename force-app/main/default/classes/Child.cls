public class Child extends Parent{
    
    public void show(){
        System.debug('This is from Child class');
    }

    public override void display(){
        System.debug('This is from overriden method');
    }
}