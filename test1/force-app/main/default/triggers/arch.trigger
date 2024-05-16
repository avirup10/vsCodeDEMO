trigger arch on Campaign (after delete) {
    if(Trigger.isdelete && trigger.isafter){
    CampArc.show(Trigger.old);
    }

}