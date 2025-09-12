({
	FirsthelperMethod : function(str) {
	alert("this is a first healper method " + str );	
        this.SecondthelperMethod('java devloper');
	},
    SecondthelperMethod : function(str) {
	alert("this is a second healper method " + str );	
        this.ThirdthelperMethod(str);
	},
    ThirdthelperMethod : function(str) {
	alert("this is a third healper method " + str );	
	},
    reUsableServerAction : function(component, event, reqparams, abutalib ){
        var action = component.get(abutalib);
       alert("check requst pram " + reqparams);	
        if(reqparams != null){
            action.setParams({count :reqparams});
        }
        
        action.setCallback(this, function(response) {
            console.log(response);
            var state = response.getState();
            if (state === "SUCCESS") {
            alert("From server: " +JSON.stringify(response.getReturnValue()) );
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
    }
})