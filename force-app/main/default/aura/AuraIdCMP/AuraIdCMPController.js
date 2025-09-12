({
	handleClick : function(component, event, helper) {
		 alert(component.find("inputId").get("v.value"));
        //helper.FirsthelperMethod(component.find("inputId").get("v.value"));
       helper.reUsableServerAction(component, event, component.find("inputId").get("v.value"), "c.fetchacclist");
	},
    initHandler : function(component, event, helper) {
		 alert("button handler was called " );
         helper.reUsableServerAction(component, event, null, "c.fetchacclist");
        
	},
     handleClicknew : function(component, event, helper) {
		 alert(component.find("inputId").get("v.value"));
        //helper.FirsthelperMethod(component.find("inputId").get("v.value"));
       helper.reUsableServerAction(component, event, component.find("inputId").get("v.value"),"c.fetchconlist");
	},
    Opportunityhandle : function(component, event, helper) {
		 alert(component.find("inputId").get("v.value"));
        //helper.FirsthelperMethod(component.find("inputId").get("v.value"));
       helper.reUsableServerAction(component, event, component.find("inputId").get("v.value") , "c.fetchopplist");
	},
    divhandler : function(component, event, helper) {
		 alert( event.target.id);
        window.open("/" + event.target.id + "/e" );
        //helper.FirsthelperMethod(component.find("inputId").get("v.value"));
     //  helper.reUsableServerAction(component, event, component.find("inputId").get("v.value") , "c.fetchopplist");
          }
    
})