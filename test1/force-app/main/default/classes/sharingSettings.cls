public with sharing class sharingSettings {
    public void disp(){
        list<account> acc=[select id,name from account];
		for(account a:acc)
        {
            System.debug(a.name);        }
    }

}