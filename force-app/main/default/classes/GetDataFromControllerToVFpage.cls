public class GetDataFromControllerToVFpage {
    public string str{set; get;}
    public list<Account> strlist{set;get;}
    public GetDataFromControllerToVFpage(){
        str = 'java dev';
        strlist =[select id , Name , Industry , Phone from Account limit 10 ];
    }
}