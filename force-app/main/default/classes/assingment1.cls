public class assingment1 {
    //public string str {set; get;}
    public list<Account> strList {set;get;} 
    public boolean flag {set; get;}
    
    public assingment1(){
        flag = false;   
        
    }
    
    public void newMethod(){
        if(flag==true){
            strList = [select id, name, phone, industry from account limit 5];           
        }
        else if(flag== false)
        {
            strList= null;
        }        
    }
}