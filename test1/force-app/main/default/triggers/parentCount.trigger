trigger parentCount on Child__c (before insert, after insert, before update, after update, before delete,after delete,after undelete) {
    if(Trigger.isAfter){
    if(Trigger.isInsert || Trigger.isDelete || Trigger.isUpdate ||Trigger.isUndelete){
    ParTrigg.Result(Trigger.New,Trigger.old);
    }
    }
    
}