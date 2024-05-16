@isTest
private class Demo1_test{
/*@testSetup static void dotest(){
    Account ac=new Account();
    ac.name='Test Setup';
    insert ac;
    }
    */
    public static testMethod void show(){
        Demo1 d=new Demo1();
        d.show();
        integer a=d.sum(10,20);
        System.assertequals(30,a,'The result is not expected.');
        Account ac=Demo_TestFactory.createAcc();
        Account acc=[select id,name from account where name=:ac.name];
        d.updAcc(acc);
        }
       }