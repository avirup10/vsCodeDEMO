public class Calci {
    integer a=10;
    integer b=10;
    integer res;
    public void doSum(){
        res=a+b;
        System.debug('Sum is '+res);
    }
    public void doSub(){
        res=a-b;
        System.debug('Subtraction is '+res);
    }
    public void doMul(){
        res=a*b;
        System.debug('Multiplication is '+res);
    }
    public void doDiv(){
        res=a/b;
        System.debug('Div is '+res);
    }
    }