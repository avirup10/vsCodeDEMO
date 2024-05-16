public class ArrayDemo {
    //static declaration
    public void getValues(){
        String[] s1=new String[] {'Avirup', 'Roy'};
            System.debug(s1[0]+ ' '+s1[1]);
        //dynamic declaration
        String[] s2=new String[2];
        s2[0]='Neelaj';
        s2[1]='Nandy';
        System.debug(s2[0]+' '+s2[1]);
    }

}