public class StanDemo {
    public void getRes(){
        list <account> act=[select id,name from account];
        for(account a:act){
            System.debug('Account id: '+a.id+' Account Name: '+a.name);
        }
    }

}