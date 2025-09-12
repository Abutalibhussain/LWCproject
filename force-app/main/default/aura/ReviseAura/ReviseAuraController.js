({
    handleClick : function(component, event, helper) {
        alert("one way binding" );
        alert("one way binding" + component.get("v.str"));
            
    },
    clickHandler : function(component, event, helper) {
        alert("two way binding" );
        alert("two way binding" );
        component.set("v.str" , "salesforce");
    },
  changehandler : function(component, event, helper) {
        alert("change handler was called"+ event.getSource().get("v.value") );
    },
    divhandler : function(component, event, helper) {
        alert("change handler was called"+event.currentTarget.dataset.abu );
},
    fetchAccount : function(component, event, helper) {
        alert("fetch account record");
         var action = component.get("c.acctlist");
         action.setParams({ firstName : cmp.get("v.firstName") });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                alert("From server: " + response.getReturnValue());
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
    }
      
})