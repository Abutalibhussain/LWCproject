public class javeScriptRemotingController {
    public string str{set;get;}
    
    @RemoteAction
    public static Account AccountDetail(string accountId , integer count){
        system.debug('count' + count);
        return [Select id , Name , Industry , Phone from Account where id=:accountId  limit :count];
    }
}