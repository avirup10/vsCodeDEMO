@isTest
private class accListcountUpdate{
    static testmethod void test(){
        list<account> acclist=new list<account>();
        for(integer i=0;i<200;i++){
            Account m=new Account(Name = 'Account'+ i);
            acclist.add(m);
            }
           insert acclist;
         Test.starttest();
         testToAccount t=new testToAccount();
         database.executebatch(t);
         Test.stoptest();
         Account[] accUpdList=[select id,name from Account];
         System.assert(accUpdList[0].name.contains(' updated via apex batch'));
        }
      }