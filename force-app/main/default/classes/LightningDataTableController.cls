public class LightningDataTableController {
	@auraenabled
    public static list<Account> acclist(){
	list<Account> acctlist = [select id , Name ,Industry , Phone from Account limit 5];
		return   acctlist;      
        
    }
    @auraenabled
    public static list<Account> updateAccount(list<Account> updateacclist){
       update updateacclist;
        return acclist();
    }
    @auraenabled
    public static list<Account> deleteAccount(Id accId){
        Account acc= [select id from account where id=: accid];
       delete acc;
        return acclist();
    }
    
}