public class myCustomSettings {
    public void mySet(){
        mySettings__c ms=mySettings__c.getInstance('ProdTriggerOnOrOff');
        System.debug(ms.isActive__c);
        if(ms.isActive__c == true){
            System.debug('Call the triggger');
        }
        else{
            System.debug('Do not call the triggger');
        }
    }

}