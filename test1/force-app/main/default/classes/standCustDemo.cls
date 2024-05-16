public class standCustDemo {
    public void show(){
        list<list<sObject>> s=[find 'gene' in name fields returning Account(id,name),Contact(id,name)];
        list<account> act=s[0];
        list<contact> con=s[1];
        if(act.size()>0){
            for(account a:act){
            System.debug('Account id: '+a.id+' Account Name: '+a.name);
        }
        }
        else
        {
           System.debug('No records.');
        }
        if(con.size()>0){
            for(contact c:con){
                System.debug('Account id: '+c.id+' Account Name: '+c.name);
            }
        }
        else
        {
            System.debug('No records.');
        }
    }

}