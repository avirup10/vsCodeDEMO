public class exceptDemo {
    public void getResults(integer a,integer b){
        try{
            integer c=a/b;
            System.debug(c);
            Demo d;
            System.debug(d);
            d.sayHello();
            list<string> l=new list<string>();
            l.add('anitha');
            System.debug(l.get(5));
        }
        catch(MathException me){
            System.debug('Please do not divide by zero');
        }
        catch(NullPointerException ne)
        {
            System.debug('Please do not call a method with null');
        }
        catch(Exception e)
        {
            System.debug('Hello! Server is busy..');
        }
        finally{
            System.debug('I will run no matter what!');
        }
    }

}