public class myMetaDem {
   
    public void mySet(){
        Custom_Metadata_Demo__mdt ms=Custom_Metadata_Demo__mdt.getInstance('triggOnOrOff');
        System.debug(ms.isActive__c);
        if(ms.isActive__c == true){
            System.debug('Call the triggger');
        }
        else{
            System.debug('Do not call the triggger');
        }
    }



}