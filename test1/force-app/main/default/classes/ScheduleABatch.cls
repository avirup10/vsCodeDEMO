public class ScheduleABatch implements Database.batchable<sobject> {
    public database.querylocator start(database.batchablecontext bc){
        String q='select id,name from merchandise__c';
        return database.getquerylocator(q);
    }
    public void execute(database.batchablecontext bc, list<merchandise__c> mer){
        for(merchandise__c m:mer){
            m.name=m.name+ 'updated with apex batch';
        }
        update mer;
    }
    public void finish(database.batchablecontext bc){
        
    }
    

}