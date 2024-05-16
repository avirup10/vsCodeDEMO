@istest
private class industryCheck_test {
    @testsetup
    public static void accCreate(){
        Account ac=new Account();
        ac.name='Test Account';
        ac.Industry='Education';
        insert ac;
    }
    public static testmethod void checktest(){
        list<Account> acc=[select id,name,ownership from account where industry='Education'];
        System.assertEquals('Public',acc[0].Ownership);
    }
}