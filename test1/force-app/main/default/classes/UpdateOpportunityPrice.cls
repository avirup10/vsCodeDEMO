public class UpdateOpportunityPrice implements Database.batchable<sobject> {
    public database.querylocator start(database.batchablecontext bc){
        String q='select id,name,amount from opportunity';
        return database.getquerylocator(q);
    }
    public void execute(database.batchablecontext bc, list<opportunity> mer){
        for(opportunity m:mer){
            m.amount=20;
        }
        Database.update(mer,false);
    }
    public void finish(database.batchablecontext bc){
        
    }
    

}