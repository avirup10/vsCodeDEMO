public with sharing class ConCgetDetails {
    @auraenabled
    public static string[] nameDetails(string email){
        string lname=[select lastname from contact where email=:email][0].lastname;
        string fname=[select firstname from contact where email=:email][0].firstname;
		String[] s1 = new String[] {fname,lname};
        return s1;
    }
}