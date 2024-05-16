public class Car extends Vehicle {
    public override void start(){
        System.debug('Car');
    }
    public override void stop(){
        System.debug('Car is stopping.');
    }
    public override void accelerate(){
        System.debug('Car is accelerating');
    }
}