public class parentToChild {
    public void displ(){
        list<invoice__c> inv=[select id,name,(select id from sell_items__r)from invoice__c];
        for(invoice__c i:inv)
        {
            System.debug(i.id+' '+i.Sell_Items__r);
        }
    }

}