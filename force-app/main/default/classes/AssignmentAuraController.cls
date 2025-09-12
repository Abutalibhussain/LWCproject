public class AssignmentAuraController {
	
    @AuraEnabled(cacheable=true)
    public static List<sObject> getRecords(String objectName) {
        String query = 'SELECT Id, Name FROM ' + objectName + ' LIMIT 10';
        return Database.query(query);
    }
}