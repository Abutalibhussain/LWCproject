({
    handleComponentEvent : function(cmp, event) {
        alert("talib parent cmp was called");
        var messagevar = event.getParam("message");
		 alert(messagevar);
        // set the handler attributes based on event data
        cmp.set("v.messageFromEvent", messagevar);
        var numEventsHandled = parseInt(cmp.get("v.numEvents")) + 1;
        cmp.set("v.numEvents", numEventsHandled);
    }
})