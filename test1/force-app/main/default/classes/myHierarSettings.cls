public class myHierarSettings {
   
    public void mySet(){
        myHiSetting__c ms=myHiSetting__c.getInstance('005IT00000DQMvX');
        System.debug(ms.isActiveForHi__c);
        if(ms.isActiveForHi__c == true){
            System.debug('Call the triggger');
        }
        else{
            System.debug('Do not call the triggger');
        }
    }



}