({
    fireComponentEvent : function(cmp, event) {
        alert("abu child cmp was called");
        // Get the component event by using the
        // name value from aura:registerEvent
        var abu = cmp.getEvent("cmpEvent");
        abu.setParams({
            "message" : "A component event fired me. " +
            "It all happened so fast. Now, I'm here!" });
        abu.fire();
    }
})