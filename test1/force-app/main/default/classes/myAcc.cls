public with sharing class myAcc {
Account acc;
public void saveorupdate(){
upsert acc;
}

 public myAcc(){
    id i=apexpages.currentpage().getparameters().get('id');
    if(i==null){
        acc=new Account();
        }
     else{
         acc=[select id,name from account where id=:i];
         }
         }

    public Account getMyAcc() {
        return acc;
    }


}