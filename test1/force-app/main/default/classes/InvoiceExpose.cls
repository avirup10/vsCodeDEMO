@restresource(urlmapping='/exposeIn/*')
global class InvoiceExpose {
    @httpget
    global static list<Invoice__c> getIn(){
        list<Invoice__c> i_n=[select name, Invoice_Desc__c from Invoice__c];
        return i_n;
    }
    @httppost
    global static void InsertIn(list<string> i1){
        for(String s:i1){
        Invoice__c i=new Invoice__c();
        i.Invoice_Desc__c=s;
        insert i;
        }
    }
    /*global static id InsertIn(String s){
        Invoice__c i=new Invoice__c();
        i.Invoice_Desc__c=s;
        insert i;
        return i.Id;
    }*/
    @httpdelete
    global static void del(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        String i=req.requestURI.substring(req.requestURI.lastindexof('/')+1);
        Invoice__c inv=[select id from Invoice__c where id=:i];
        delete inv;
    }

}