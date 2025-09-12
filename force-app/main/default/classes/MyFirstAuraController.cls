public class MyFirstAuraController {
    @auraenabled
    public static list<Account> getAccount(){
        return [select id , Name , Phone from Account limit 10];
    }
}