public class MethodOverloading {

    public void sum(integer a, integer b){
        integer res=a+b;
    System.debug('Sum is'+res);
    }
        public void sum(String a, String b)
        {
            System.debug(a+' '+b);
        }
    public void sum(String a, String b, integer c)
        {
            System.debug(a+' '+b);
            System.debug(c);
        }
}