public class RepeatController {
    public list<Account> acclist{set; get;}
    public RepeatController(){
        acclist =[ select id , Name , Phone , Industry from Account limit 10];
    }
}