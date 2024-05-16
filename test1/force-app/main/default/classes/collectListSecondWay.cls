public class collectListSecondWay {
    public void getNames(){
        List<String> l=new List<String>();
        l.add('Avirup');
        l.add('Srinivasa');
        l.add('Abhisek');
        l.add('Soumalya');
        l.add('Avirup');
        l.add('Abhisek');
        Set<String> s=new Set<String>();
        for(String s1 : l)
         {
             s.add(s1);
         }
        System.debug(s);
    }
}