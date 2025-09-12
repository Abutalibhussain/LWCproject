public class TenRecordGetController {
    public list<Account> strlist{set; get;}
    
    public TenRecordGetController(){
        strlist = [select id , Name , Industry , Phone from Account limit 10];
    }
    
    
    Public void method1(){
        Account ac = new Account();
        ac.Name = 'guddu1';
        ac.Phone = '123';
        insert ac ;
        system.debug('hiiii');
        
        Contact cc = new Contact();
        cc.LastName = 'gcontact';
        cc.Phone = '32';
        cc.AccountId = ac.Id;
        insert cc;
        system.debug(cc);
        
    }
}