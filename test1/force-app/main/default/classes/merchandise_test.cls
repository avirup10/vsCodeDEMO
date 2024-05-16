@istest
private class merchandise_test{
    public static testmethod void getDetails(){
    list<Merchandise__c> mer=new list<Merchandise__c>();
        for (integer i=0;i<200;i++){
            Merchandise__c m=new Merchandise__c();
            m.name='Merchandise' +i;
            mer.add(m);
        }
        insert mer;
        Test.starttest();
        SOQLDemo s=new SOQLDemo();
        s.showDemo();
        Test.stoptest();
    }
}