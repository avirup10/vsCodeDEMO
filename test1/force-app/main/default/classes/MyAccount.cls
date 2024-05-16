public class MyAccount {

    public PageReference doSave() {
        upsert act;
        return new PageReference('/apex/success');
    }



        Account act;

       public MyAccount(){
       id i=apexpages.currentpage().getparameters().get('id');
       
       if(i==null){
       act=new Account();
       }
       else{
       
      act=[select id,name from Account where id=:i];
      
              }
       }
       

    public Account getMyAccount() {
    
        return act;
    }

}