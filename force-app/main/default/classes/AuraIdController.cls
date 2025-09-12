public class AuraIdController {
    @auraenabled
    public static list<Account> fetchacclist(){
        list<Account> acclist=[select id,Name,Phone from Account limit 5];
        return acclist;
    }
    
     @auraenabled
    public static list<Contact> fetchconlist(integer count){
        list<Contact> conlist=[select id,LastName,Phone from Contact limit :count];
        return conlist;
    }
     @auraenabled
    public static list<Opportunity> fetchopplist(){
        list<Opportunity> opplist=[select id,Name from Opportunity limit 7];
        return opplist;
    }
    
}