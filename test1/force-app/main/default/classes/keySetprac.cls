public class keySetprac {
    public void show(){
        map<integer,string> m1=new map<integer,string>();
        m1.put(1,'avirup');
        m1.put(2,'soumalya');
        m1.put(3,'abhisek');
        Set<integer> s=m1.keySet();
        for(integer i: s)
        {
            System.debug(i+' '+m1.get(i));
        }
        for(String s1:m1.values())
        {
            System.debug(s1);
        }
    }

}