public class ParTrigg {
    public static void Result(list<child__c> nec,list <child__c> oec){
        list<id> i=new list<id>();
        list<parent__c> p=new list<parent__c>();
        id i1;
        if(nec!=null){
            for(child__c c:nec){
                i1=c.Parent__c;
                i.add(i1);
            }
        }
        if(oec!=null){
            for(child__c c:oec){
                i1=c.Parent__c;
                i.add(i1);
            }
        }
        p=[select id,name, (select id from childs__r) from parent__c where id=:i];
        if(!p.isEmpty()){
            for(parent__c pa:p){
                pa.records__c=pa.childs__r.size();
            }
        }
        update p;
    }

}