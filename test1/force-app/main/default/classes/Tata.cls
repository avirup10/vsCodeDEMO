public abstract class Tata implements Cars {
    String whl = '';
    String eng = '';
    String seat = '';
    String logo = '';
    public Tata(){
        wheel();
        engine();
        seat();
        logo();
    }
    public void wheel (){
        whl = 'I have four wheel';
    }
    public void engine(){
        
        eng = 'I have engine';
    }
    public void seat(){
        
        seat = 'I have four seat';
    }
    public void logo(){
        logo = 'TATA Logo';
    }
    public void showAll (){
        
        System.debug(whl);
        System.debug(eng);
        System.debug(seat);
        System.debug(logo);
    }
    
    
    public abstract void color();
    public abstract void ft();
}