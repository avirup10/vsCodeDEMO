public class testToAccount implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
        String a='select id,name from account';
        return Database.getQueryLocator(a);
    }
    public void execute(Database.BatchableContext bc, list<account> acc){
        for (account a:acc){
            a.name=a.name+' updated via apex batch';
        }
        update acc;
    }
    public void finish(Database.BatchableContext bc){
        //System.debug('Send Email after confirmation');
        //Database.executeBatch(new anotherclass(),batch size);
    }
}