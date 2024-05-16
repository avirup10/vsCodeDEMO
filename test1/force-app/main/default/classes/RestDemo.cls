@RestResource(urlmapping='/myAccount/*')
global class RestDemo {
    @httpget
    global static List<Account> getAllAccount(){
        List<Account> acc=[select id,name from Account];
        return acc;
    }
    @httppost
    global static id insAcc(String s){
        Account a=new Account();
        a.name=s;
        insert a;
        return a.Id;
    }
    @httpdelete
    global static string del(){
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        String i=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account a=[select id from Account where id=:i];
        delete a;
        return 'deleted';
    }

}