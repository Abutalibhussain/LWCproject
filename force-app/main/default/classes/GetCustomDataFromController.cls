public class GetCustomDataFromController {
    public list<Student__c> liststd{set;get;}
    
    public GetCustomDataFromController(){
        liststd= [select id , Name__c ,Class_And_Branch__c , Grade__c from Student__c limit 10];
    }
}