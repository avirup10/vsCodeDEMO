public class collectListThirdWay {
    public void getNames(){
        List<String> l=new List<String>();
        l.add('Avirup');
        l.add('Srinivasa');
        l.add('Abhisek');
        l.add('Soumalya');
        l.add('Avirup');
        l.add('Abhisek');
        Set<String> s=new Set<String>(l);
        for(String st:s)
        {
            System.debug(st);
        }
    }
}