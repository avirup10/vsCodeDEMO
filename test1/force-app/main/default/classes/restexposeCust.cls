@restresource(urlmapping='/forCustomObj/*')
global class restexposeCust {
    @httpget
    global static list<merchandise__c> showR(){
        list<merchandise__c> mer=[select id,name from merchandise__c];
        return mer;
    }
    @httppost
    global static id insMer(string q,String s,integer a,integer b){
        merchandise__c merc=new merchandise__c();
        merc.Name=q;
        merc.Merchandise_Desc__c=s;
        merc.Merchandise_Price__c=a;
        merc.Merchandise_Stock__c=b;
        insert merc;
        return merc.Id;
    }
    @httpdelete
    global static void del(){
        RestRequest req=RestContext.request;
        String s=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        merchandise__c merch=[select id,name from merchandise__c where id=:s];
        delete merch;
    }

}