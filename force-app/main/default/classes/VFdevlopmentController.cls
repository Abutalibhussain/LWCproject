public class VFdevlopmentController {
    public string str{set ; get;}
  /*  public string getstr(){
        return str;
    }*/
    public list<Student__c> scdlist{set ; get;}
    
    public VFdevlopmentController(){
        str = 'java dev';
        scdlist = [select id , Name__c , Collage__c , Class_And_Branch__c from Student__c limit 5];
        //system.debug('account 10 record' acclist);
    }
}