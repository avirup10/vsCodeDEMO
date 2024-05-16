public class A {
    @future
    public static void getA(){
        system.debug('A');
        system.enqueuejob(new B());
    }
}