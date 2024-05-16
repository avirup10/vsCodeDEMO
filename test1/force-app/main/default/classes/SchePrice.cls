public class SchePrice implements Schedulable{
    public void execute(SchedulableContext sc){
        merchandisePrice99 mp=new merchandisePrice99();
        database.executeBatch(mp);
    }

}