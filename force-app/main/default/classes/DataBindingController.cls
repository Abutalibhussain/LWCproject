public class DataBindingController {
    public string str{set; get;}
    public Account acct{set; get;}
    public  DataBindingController(){
         acct = new Account();
        
    }
    public void verifyInpVal(){
         system.debug('str' + str);
    }
    public void FirstMethod(){
       system.debug(acct);
        try{
            Account acc = new Account();
            acc.Name = acct.Name;
            acc.Phone = acct.Phone ;
            acc.Industry = acct.Industry ;
            insert acc;
            system.debug('account record called' + acc);
            
            Contact cc = new contact();
            cc.LastName = 'Contact demo';
            cc.Phone = '123456789';
            cc.AccountId = acc.id;
            Insert cc;
            system.debug('contact record called' + cc);
            apexpages.message msg = new apexpages.message(ApexPages.severity.CONFIRM, 'Account '+ label.success_msg);
            apexpages.addmessage(msg);
        }
        catch(exception e){
            system.debug('Catch error msg' + e.getStackTraceString());
             apexpages.message msg = new apexpages.message(ApexPages.severity.ERROR, e.getmessage());
            apexpages.addmessage(msg);
        }
        
        
        
    }
}