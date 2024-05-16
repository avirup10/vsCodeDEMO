public class childToParent {
    public void disp(){
        list<sell_item__c> sei=[select id,name,invoice__r.Invoice_Desc__c from sell_item__c];
        for(sell_item__c s:sei)
        {
            System.debug(s.id+' '+s.name+' '+s.invoice__r.Invoice_Desc__c);
        }
        
    }

}