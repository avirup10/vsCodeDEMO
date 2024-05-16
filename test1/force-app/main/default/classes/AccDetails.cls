public with sharing class AccDetails {
    @auraenabled
    public static string getAcc(string accNum){
        return [select name from Account where AccountNumber=:accNum].name;
    }
}