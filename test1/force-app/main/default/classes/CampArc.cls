public class CampArc {
    public static void show(list<campaign> c){
        CampaignArch__c ca;
        list<CampaignArch__c> l=new list <CampaignArch__c>();
        for(campaign c1:c){
            ca=new CampaignArch__c();
            ca.name=c1.name;
            l.add(ca);
        }
        insert l;
        
    }

}