public class PageLoadController {
    public integer str{set; get;}
    public list<string> strlist{set; get;}
    public list<integer> intlist{set;get;}
    public boolean flag{set; get;}
    
    
    public PageLoadController(){
        strlist = new list<string>();
        strlist.add('aaa');
         strlist.add('bbb');
         strlist.add('ccc');
        flag = true;
        
    }
    public void insertAccountRecord(){
       /* strlist = null;
         intlist = new list<integer>();
        intlist.add(111);
         intlist.add(222);
         intlist.add(333);
        flag = false; */
        
     /*  for(integer i = 1 ; i <= str ; i++){
            Contact con = new Contact();
            con.LastName = 'Athar333 ' + i; 
            con.Phone ='123';
            //acc.Industry = 'Banking';
            insert con ;
            system.debug('accont reord' + con);
}*/
            
                
        system.debug('str' + str);
        
        
    }
}