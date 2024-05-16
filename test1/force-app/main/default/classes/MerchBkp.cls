public class MerchBkp {
    public static void showMerch(map <id,Merchandise__c> mer){
        Merchandise_Arch__c m;
        list<Merchandise_Arch__c> mL=new list<Merchandise_Arch__c>();
        set<id> key=mer.keySet();
        for(id k: key)
        {
        m=new Merchandise_Arch__c();
        Merchandise__c m0=mer.get(k);
        m.name=m0.name;
        m.Merchandise_Arch_Desc__c=m0.Merchandise_Desc__c;
        m.Merchandise_Arch_Price__c=m0.Merchandise_Price__c;
        m.Merchandise_Arch_Stock__c=m0.Merchandise_Stock__c;
        mL.add(m);
        }
        insert mL;
    }

}