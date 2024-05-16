trigger del on Contact (after delete, after insert, after update, after undelete) {
    if(Trigger.isafter){
        if(Trigger.isinsert || Trigger.isupdate || Trigger.isDelete || Trigger.isUndelete){
                countRec.countget(trigger.new,trigger.old);
                }
               }

}