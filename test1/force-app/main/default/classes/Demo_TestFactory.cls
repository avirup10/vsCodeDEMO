@isTest
public class Demo_TestFactory{
    public static account createAcc(){
        Account act=new Account();
        act.name='Avirup';
        insert act;
        return act;
       }
     }