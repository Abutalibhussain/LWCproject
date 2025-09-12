({
    handleClick : function(component, event, helper) {
        alert("handel click was called");
        alert("one way data binding -" + component.get("v.str") );
    },
    ClickHandler : function(component, event, helper) {
        alert("click handler was called");
        component.set("v.str" , "welcome to the salesforce world")
        
    },
    changeHandler : function(component, event, helper) {
        alert("change handler was called " + event.getSource().get("v.value"));
        
    },
    divHandler : function(component, event, helper) {
        alert("div handler was called " + event.currentTarget.dataset.abu);
    },
    
    buttonHandler : function(component, event, helper) {
        alert("button handler was called " );
        var action = component.get("c.getAccount");
        action.setCallback(this, function(response) {
            console.log(response);
            var state = response.getState();
            if (state === "SUCCESS") {
            alert("From server: " +JSON.stringify(response.getReturnValue()) );
                 component.set("v.aactlist" , response.getReturnValue());
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