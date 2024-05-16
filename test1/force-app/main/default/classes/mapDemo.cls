public class mapDemo {
    public void getMap(){
        map <string, string> m1=new map <string,string> ();
        m1.put('n1','Avirup');
        m1.put('n2','Soumalya');
        m1.put('n3','Abhisek');
        m1.put('n4','Srinivasa');
        m1.put('n5','Abhishek');
        Set<String> k = m1.keySet();
        for (string key:k)
        {
           string name=m1.get(key);
          System.debug(key+' '+name);
        }
        for (string key1:m1.values()){
            System.debug(key1);
        }
    }
}