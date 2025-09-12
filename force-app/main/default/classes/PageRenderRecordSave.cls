public class PageRenderRecordSave {
    public string str{set;get;}
    public PageRenderRecordSave(){
        
    }
    public void methodone(){
        /*   Student__c std = new Student__c();
std.Name__c = 'atif';
std.Class_And_Branch__c = 'Civil Engineer';
std.Age__c = 22;
std.Collage__c = 'tgvc';
insert std;
system.debug(std);*/
        for(integer i = 0 ; i<=3 ; i++){
            Account acc = new Account();
            acc.Name ='kamal ' + i;
            acc.Phone = '1234';
            acc.Industry = 'Banking';
            insert acc;
            system.debug(acc);  
        }
        
		system.debug(str);          
        
    }
}