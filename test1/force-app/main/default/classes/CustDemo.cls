public class CustDemo {
    public void getResult(){
        list <merchandise__c> at =[select id, name from merchandise__c];
        for(merchandise__c a:at){
            System.debug('ID: '+a.id+' Merchandise Name '+a.name);
        }
    }

}