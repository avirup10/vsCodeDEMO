public class childToParentCustom {
    public void show(){
        list<Sell_Item__c> sc=[select id,name, Merchandise__r.name from Sell_Item__c];
        for(Sell_Item__c s:sc){
            System.debug(s.id+' '+s.name+' '+s.Merchandise__r.name);
        }
    }

}