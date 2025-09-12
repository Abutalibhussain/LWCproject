public class Demo_Controller {
		@AuraEnabled
    public static list<Account> Acclist(){
        return [select id , Name , Industry from Account limit 10 ];
    }
}