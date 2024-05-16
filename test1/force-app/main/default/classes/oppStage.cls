public class oppStage {
    public static void show(list<opportunity> li,list<opportunity> oli){
        integer i=0;
        for(opportunity o:oli){
            
            Opportunity n=li.get(i);
            String old=o.StageName;
            String neu=n.StageName;
            if(old=='Closed Won' && neu=='Closed Lost'){
                n.NextStep='Escalate to Manager';
           } 
       i++;
        }
        
    }
}