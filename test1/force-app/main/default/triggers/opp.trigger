trigger opp on Opportunity (before update,after update) {
    if(trigger.isbefore && trigger.isupdate){
        oppStage.show(Trigger.New,Trigger.old);
        
        }
}