public class updRec implements database.batchable<sObject>{
    public database.querylocator start(database.batchablecontext bc){
        return database.getquerylocator('select id,Invoice_Closed_Date__c from Invoice__c');
    }
    public void execute(database.batchablecontext bc, list <Invoice__c> inv){
        list <Invoice__c> in1=new list <Invoice__c>();
        for(Invoice__c i: inv){
            i.Invoice_Closed_Date__c=System.today();
            in1.add(i);
        }
        update in1;
    }
    public void finish(database.batchablecontext bc){
        
    }

}