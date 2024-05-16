public class parentToChildCustom {
    public void show(){
        list<Merchandise__c> sc=[select id,name, (select id,name from Sell_Items__r) from Merchandise__c];
        for(Merchandise__c s:sc){
            System.debug(s.id+' '+s.name+' '+s.Sell_Items__r);
        }
    }

}