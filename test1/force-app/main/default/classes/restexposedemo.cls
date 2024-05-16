@restresource(urlmapping='/Avirup/*')
global class restexposedemo {
    @httpget
    global static list<Contact> getCon(){
        list <contact> c=[select id,name from contact];
        return c;
    }
    @httppost
    global static id getid(string s){
        Contact c=new Contact();
        c.LastName=s;
        insert c;
        return c.id;
    }

}