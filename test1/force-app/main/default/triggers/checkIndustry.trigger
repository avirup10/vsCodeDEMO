trigger checkIndustry on Account (before insert) {
if(Trigger.isbefore && Trigger.isinsert){
    industryCheck.owner(Trigger.New);
    
    }

}