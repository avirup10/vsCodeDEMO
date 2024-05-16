public class SOQLDemo {
    public void showDemo(){
        list<Merchandise__c> merch=[select name from Merchandise__c];
        for(Merchandise__c m:merch){
            System.debug(m.name);
        }
    }

}