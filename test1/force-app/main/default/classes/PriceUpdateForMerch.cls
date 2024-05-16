public class PriceUpdateForMerch implements Database.batchable<sobject> {
    public database.querylocator start(database.batchablecontext bc){
        String q='select id,name,Merchandise_Price__c from merchandise__c where name=\'Caps\'';
        return database.getquerylocator(q);
    }
    public void execute(database.batchablecontext bc, list<merchandise__c> mer){
        for(merchandise__c m:mer){
            m.Merchandise_Price__c=100;
        }
        update mer;
    }
    public void finish(database.batchablecontext bc){
        
    }
}