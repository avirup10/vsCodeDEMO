public class Boiler {
    public void getHeat(integer speed){
        try{
            if(speed>50){
                throw new BoilerException();
            }
            else{
                System.debug('Boiling');
        }
        }
            catch(BoilerException be){
                speed=0;
                System.debug('Speed reset.');
            }
        }
        
    }