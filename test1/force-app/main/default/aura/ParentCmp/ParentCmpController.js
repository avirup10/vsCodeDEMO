({
	handleEvent : function(component, event, helper) {
        var msg=event.getParam("Message");
        component.set("v.childmsg",msg);
	}
})