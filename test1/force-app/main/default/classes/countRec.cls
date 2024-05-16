public class countRec {
    public static void countget(list<Contact> newL, list <contact> oldL){
        list <Account> acc=new list<account>();
        list <id> i1=new list<id>();
        id i;
        if(newL!=null){
        for(contact c:newL){
            i=c.AccountId;
            i1.add(i);
        }
        }
        if(oldL!=null){
        for(contact c:oldL){
            i=c.AccountId;
            i1.add(i);
        }
        }
        acc=[select id,name,No_Of_Contacts__c,(select id from contacts) from Account where id=:i1];
        if(!acc.isEmpty()){
            for(account a:acc){
                a.No_Of_Contacts__c=a.contacts.size();
            }
        }
        update acc;
    }

}