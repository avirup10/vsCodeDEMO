({
	handleGet : function(component, event, helper) {
		var evt=component.getEvent("registerEvent");
        evt.setParams({"Message" : "Welcome to Aura Tutorials "+component.get("v.Email")});
        evt.fire();
        console.log("Fired");
	}
})