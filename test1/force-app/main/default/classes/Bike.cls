public class Bike extends Vehicle {
    public override void start(){
        System.debug('Bike is starting.');
    }
    public override void stop(){
        System.debug('Bike is stopping.');
    }
    public override void accelerate(){
        System.debug('Bike is accelerating.');
    }

}