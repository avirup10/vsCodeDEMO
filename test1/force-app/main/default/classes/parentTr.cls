public class parentTr {
    public static void getR(list<child__c> newL,list <child__c> oldL){
        list<parent__c> p1=new list<parent__c> ();
        list<id> i1=new list<id>();
        id i;
        if(newL!=null){
        for(child__c c:newL){
          i=c.parent__c;
            i1.add(i);
        } 
        }
        if(oldL!=null){
        for(child__c c:oldL){
          i=c.parent__c;
            i1.add(i);
        }
        }
        p1=[select id,name,(select id from childs__r) from parent__c where id=:i];
        for(parent__c p:p1){
            p.records__c=p.childs__r.size();
        }
        update p1;
    }

}