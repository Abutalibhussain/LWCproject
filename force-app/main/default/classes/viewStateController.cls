public class viewStateController {
    public  transient Account acc{set;get;}
	  public transient Contact cont{set; get;}    
    public viewStateController(){
        acc = new Account();
        cont = new Contact();
        
    }
    
    public void insertAccount(){  
        
    }
}