public with sharing class mydata {

    public void saveit() {
        insert cn;
    }


    Contact cn ;
    public mydata(){
    
    Id mid = apexpages.currentpage().getparameters().get('id');    
    if(mid == null){
    
        cn = new Contact();
    }else{
    
        cn = [select firstname,lastname,phone from contact where id=:mid];
    
    }
    
    }
    public Contact getMydata() {
        return cn;
    }

}