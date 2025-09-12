public class actionFunctionController {
    public string str{set;get;}
    public Account acc{set;get;}
    
    
    public actionFunctionController(){
        str = '';
        acc = new Account();
        
    }
    
    
    public void findAccount(){
        list<Account> acclist = [select id , Name , Phone , Industry from Account where name= :str limit 1];
        if(!acclist.isEmpty()){
            acc = acclist[0];
        }
        else{
           system.debug('no record found');
        }
    }
    
}