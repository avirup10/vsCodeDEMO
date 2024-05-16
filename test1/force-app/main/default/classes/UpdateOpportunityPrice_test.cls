@istest
private class UpdateOpportunityPrice_test {
    @testsetup
    public static void test(){
       list <opportunity> opr=new list<opportunity>();
        for(integer i=0;i<200;i++){        
        Opportunity op=new Opportunity();
        op.Name='test';
        op.StageName='Prospecting';
        op.CloseDate=System.today();
        opr.add(op);
        }
        insert opr;
    }
    @isTest
    public static void testPrice(){
        Test.startTest();
         UpdateOpportunityPrice op =new UpdateOpportunityPrice();
         Database.executeBatch(op);
        Test.stopTest();
        Opportunity[] opcheck = [select id, name, amount from opportunity];
        System.assertequals(opcheck[0].Amount,20,'Wrong Amount!');
    }

}