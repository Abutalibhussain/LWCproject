trigger ManageContactOnAccount on Account (after update) {
    
   
    List<Contact> contactsToInsert = new List<Contact>();
    List<Contact> contactsToDelete = new List<Contact>();

    for (Account acc : Trigger.new) {
       
        
        if (acc.Contact_rec_exist__c == true) {
           for (Integer i = 0; i < 5; i++) {
               		contact con = new contact();
                   con.LastName = 'Contact ' + i;
                    con.AccountId= acc.Id;
                    contactsToInsert.add(con);
                
            }
            insert contactsToInsert;
        } 
        else if (acc.Contact_rec_exist__c == false) {
           
            
        }
    }
}