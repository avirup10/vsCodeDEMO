public class SchePrice3 implements Schedulable{
    public void execute(schedulablecontext sc){
        merchandisePrice99 mp=new merchandisePrice99();
        database.executeBatch(mp);
    }

}