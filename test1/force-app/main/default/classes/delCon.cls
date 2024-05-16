public class delCon {
    public static void show(list<contact> co){
         
         for(contact c:co)
         {              
            if(c.AccountId!=null){
                throw new custException();
            }
         }
         }
        
}