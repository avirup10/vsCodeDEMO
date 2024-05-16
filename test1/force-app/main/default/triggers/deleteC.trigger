trigger deleteC on Contact (before delete) {
        if(trigger.isbefore && trigger.isdelete){
            delCon.show(Trigger.old);
            }
}