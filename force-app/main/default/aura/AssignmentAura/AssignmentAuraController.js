({
    // Fetch Accounts
    getAccounts : function(component, event, helper) {
        helper.fetchRecords(component, 'Account');
    },

    // Fetch Contacts
    getContacts : function(component, event, helper) {
        helper.fetchRecords(component, 'Contact');
    },

    // Fetch Opportunities
    getOpportunities : function(component, event, helper) {
        helper.fetchRecords(component, 'Opportunity');
    }
})