@isTest
private class RestDemo_Test {
    public testmethod static void testGet() {
        Account acc =Demo_TestFactory.createAcc();
        Test.startTest();
        List<Account> accounts = RestDemo.getAllAccount();
        Test.stopTest();
        System.assertEquals('Avirup', accounts[0].Name);
    }
    public testmethod static void testPost() {
        Test.startTest();
        Account acc =Demo_TestFactory.createAcc();
        list <Account> insertedAccount = [SELECT Id,name FROM Account WHERE id =:acc.Id];
        RestDemo.insAcc(acc.Id);
        Test.stopTest();
        System.assertEquals('Avirup', insertedAccount[0].name);
    }
    public testmethod static void testDelete() {
        Account acc=Demo_TestFactory.createAcc();
        String recId=acc.id;
        RestRequest req=new RestRequest();
        RestResponse res=new RestResponse();
        req.requestURI= '/services/apexrest/myAccount/'+recId;
        Test.starttest();
        RestContext.request=req;
        RestContext.response=res;
        String s1=RestDemo.del();
        Test.stoptest();
        System.assertEquals('deleted',s1,'invalid');
    }
}