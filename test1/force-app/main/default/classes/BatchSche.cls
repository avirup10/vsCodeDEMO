public class BatchSche {
    public void morningbatch(){
        String mCron='0 0 8 * * ?';
        System.schedule('Morning99',mCron, new SchePrice2());
    }
    public void eveningbatch(){
        String eCron='0 0 18 * * ?';
        System.schedule('Evening99',eCron, new SchePrice3());
    }

}