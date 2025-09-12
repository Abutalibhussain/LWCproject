public class ReviseController {
    public static list<Account> acctlist(){
        return [select id,Name,Phone from Account limit 10];
    }
}