public class merchandisePrice99 implements database.batchable<sObject>{
    public database.querylocator start(database.batchablecontext bc){
        string s='select Merchandise_Price__c from Merchandise__c';
        return database.getquerylocator(s);
    }
    public void execute(database.batchablecontext bc, list<Merchandise__c> li){
        for(Merchandise__c m: li){
            m.Merchandise_Price__c=99;
        }
        update li;
    }
    public void finish(database.batchablecontext bc){
        
    }

}