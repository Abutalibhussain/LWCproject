({
    intihandler : function(component, event, helper) {
        const columns = [
            { label: 'Account Name', fieldName: 'Name', type: 'text', editable: 'true' },
            { label: 'Account Phone', fieldName: 'Phone', type: 'text',editable: 'true' },
            { label: 'Account Industry', fieldName: 'Industry', type: 'text',editable: 'true' },
            { label: 'View', type: 'button', initialWidth: 135,
             typeAttributes: { label: 'view Record', name: 'viewrecord' }
            },
            { label: 'edit', type: 'button', initialWidth: 135,
             typeAttributes: { label: 'edit Record', name: 'editrecord' }
            },
            { label: 'delete', type: 'button', initialWidth: 135,
             typeAttributes: { label: 'delete Record', name: 'deleterecord' }
            },
        ];
            component.set("v.recColumn" , columns );
            
            var action = component.get("c.acclist");
            
            action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
            
            alert("From server: " + JSON.stringify(response.getReturnValue()));
            component.set("v.acclist" , response.getReturnValue());
            
            
            }
            else if (state === "INCOMPLETE") {
            }
            else if (state === "ERROR") {
            var errors = response.getError();
            if (errors) {
            if (errors[0] && errors[0].message) {
                console.log("Error message: " + 
                            errors[0].message);
            }
    } else {
    console.log("Unknown error");
}
 }
 });
$A.enqueueAction(action);
},
    rowSelecthandler : function(component, event, helper) {
        var selectedRows = event.getParam('selectedRows');
        alert(JSON.stringify(selectedRows));
        
        
    },
        
        savehandler  : function(component, event, helper) {
            var draftvalues =event.getParam('draftValues');
            alert(JSON.stringify(draftvalues));
            var action = component.get("c.updateAccount");
            action.setParams({ updateacclist : draftvalues });
            action.setCallback(this, function(response) {
                var state = response.getState();
                if (state === "SUCCESS") {
                    
                    alert("From server: " + JSON.stringify(response.getReturnValue()));
                    component.set("v.acclist" , response.getReturnValue());
                    component.set("v.draftData",[]);
                    
                    
                }
                else if (state === "INCOMPLETE") {
                }
                    else if (state === "ERROR") {
                        var errors = response.getError();
                        if (errors) {
                            if (errors[0] && errors[0].message) {
                                console.log("Error message: " + 
                                            errors[0].message);
                            }
                        } else {
                            console.log("Unknown error");
                        }
                    }
            });
            $A.enqueueAction(action);
        },
            
            rowActionHandler : function(component, event, helper) {
                var actionvar = event.getParam('action');
                //   alert(JSON.stringify(actionvar));
                var rowvar = event.getParam('row');
                // alert(JSON.stringify(rowvar));
                if(actionvar.name == 'viewrecord'){
                    window.open("/" + rowvar.Id);
                }
                else if(actionvar.name == 'editrecord'){
                    window.open("/" + rowvar.Id + "/e");
                }
            },
})