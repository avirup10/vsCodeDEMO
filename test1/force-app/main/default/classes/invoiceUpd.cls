public class invoiceUpd implements schedulable {
    public void execute(schedulablecontext sc){
        updRec up=new updRec();
        database.executebatch(up);
    }

}