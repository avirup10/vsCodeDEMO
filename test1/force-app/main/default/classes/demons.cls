public class demons {
    public void getRes(){
    List<String> myStrings = new List<String>();
    List<String> myStrings1 = new List<String>();
    myStrings.add('A');
    myStrings.add('B');
    myStrings1.add('A');
    myStrings1.add('B');
        //contains checks the value given by user in the List and returns boolean result,i.e., true or false.
	System.debug(myStrings.contains('M'));
        //equals checks in between two List and returns boolean result,i.e., true or false.
    System.debug(myStrings.equals(myStrings1));
    }
}