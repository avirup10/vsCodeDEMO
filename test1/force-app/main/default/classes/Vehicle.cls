public abstract class Vehicle {
    public abstract void start();
    public abstract void stop();
    public abstract void accelerate();
    public void deccelerate(){
        System.debug('Vehicle is deccelerating.');
    }

}