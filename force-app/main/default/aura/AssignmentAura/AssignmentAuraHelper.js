({
    fetchRecords : function(component, objectName) {
        var action = component.get("c.getRecords");
        action.setParams({ objectName: objectName });

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                var records = response.getReturnValue();

                // Define columns with Edit, Open, and Delete actions
                var columns = [
                    { label: 'Name', fieldName: 'Name', type: 'text' },
                    { type: 'button', typeAttributes: { label: 'Edit', name: 'edit', title: 'Edit', variant: 'brand' }},
                    { type: 'button', typeAttributes: { label: 'Open', name: 'open', title: 'Open', variant: 'neutral' }},
                    { type: 'button-icon', typeAttributes: { iconName: 'utility:delete', title: 'Delete', alternativeText: 'Delete', iconClass: 'slds-icon-text-error' }}
                ];

                component.set("v.records", records);
                component.set("v.columns", columns);
            } else {
                console.error('Error fetching records: ' + response.getError()[0].message);
            }
        });

        $A.enqueueAction(action);
    }
})