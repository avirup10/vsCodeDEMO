@istest
private class checkIndustry_test {
    @testsetup
    public static void create(){
        Account acc=new Account(name='test',industry='education');
        insert acc;
    }
    public static testmethod void testAccTrig(){
        Account a=[select id,name, ownership from account where name='test'];
        System.assert(a.Ownership.equals('Public'));
    }

}