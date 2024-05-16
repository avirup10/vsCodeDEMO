public class ParentTriggerCount {
    public static void show(list<Child__c> nList,list<Child__c> oList){
        list <id> pL=new list<id>();
        //Parent__c p=new Parent__c();
        list<Parent__c> pList=new list<Parent__c>();
        id i;
        if(nList!=null){
        for(Child__c cL: nList){
            i=cL.Parent__c;
            if(cL.ownerid!=null){
                pL.add(cL.ownerid);
           }
        }
        }
        if(oList!=null){
        for(Child__c cL: oList){
            i=cL.Parent__c;
            if(cL.ownerid!=null){
                pL.add(cL.ownerid);
            }
        }
        }
        pList=[select id,Records__c ,(select id from Childs__r) from Parent__c];
        if(!pList.isEmpty()){
            for(Parent__c pa:pList ){
                pa.Records__c=pa.Childs__r.size();
            }
        }
        update pList;
    }
}