global class SOAPExample{
    webservice static account getAccount(String i){
        Account a=[select id,name from account where id=:i];
        return a;
    }
}