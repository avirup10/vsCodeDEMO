public class SOSLDemo {
    public void showD(){
        list<list<sObject>> s=[find 'gene' in name fields returning account(id,name),contact(id,name)];
        list<account> act=s[0];
        list<contact> con=s[1];
        if(act.size()>0){
            for(account a:act){
                System.debug(a.name+' '+a.id);
            }
        }
        else{
            System.debug('No records.');
        }
        if(con.size()>0){
            for(contact c:con){
                System.debug(c.name+' '+c.id);
            }
        }
        else{
            System.debug('No records.');
        }
    }
}