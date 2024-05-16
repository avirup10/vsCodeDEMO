public class pTrigg {
    public static void trigg(list<Child__c> newList,list<Child__c> oldList){
        //Parent__c parent=new Parent__c;
        list<Parent__c> pa=new list<Parent__c>();
        list<id> i1=new list<id>();
        for(Child__c c:newList){
            id i=c.Parent__c;
            if(c.ownerid!=null){
                i1.add(c.ownerid);
            }
        }
        for(Child__c c:oldList){
            id i=c.Parent__c;
            if(c.ownerid!=null){
                i1.add(c.ownerid);
            }
        }
        pa=[select id,name, (select id from childs__r) from parent__c];
        if(!pa.isEmpty()){
            for(parent__c p:pa){
                p.Records__c=p.childs__r.size();
            }
        
        }
        update pa;
    }

}