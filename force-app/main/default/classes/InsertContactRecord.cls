public class InsertContactRecord {
    public string str{set; get;}
    public void methodone(){
        Contact cc = new Contact();
        cc.LastName = 'bhopal';
        cc.Phone = '123';
        insert cc ; 
        system.debug(cc);
        system.debug(str);
}
    }