public class BindingDemo2 {
    public string str{set;get;}
    public void theam(){
         system.debug(str);
    }

    
    public void method2(){
        try{   Account acc = new Account();
        acc.Name = str;
        acc.Phone = '1234';
        insert acc;
        system.debug(acc);
        
        Contact cc = new Contact();
        cc.LastName = 'Hussain';
        cc.Phone = '654321';
        cc.AccountId = acc.Id;
        Insert cc;
        system.debug(cc);
            
            ApexPages.Message Msg = new ApexPages.Message(ApexPages.severity.CONFIRM, 'Account' + label.success_msg);
            apexPages.addmessage(Msg);
           }
        catch(exception e){
             system.debug(e);
             ApexPages.Message Msg = new ApexPages.Message(ApexPages.severity.ERROR, 'Account' +  label.success_msg);
             apexPages.addmessage(Msg);
        }
            
    }
}