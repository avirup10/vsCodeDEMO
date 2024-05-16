({
	validate : function(component, event, helper) {
		var act=component.get("c.nameDetails");	
        act.setParams({email :component.get("v.email")});
        act.setCallback(this, function(a){
            			component.set("v.firstName",a.getReturnValue()[0]);
                        component.set("v.lastName",a.getReturnValue()[1]);
            			                        });
        $A.enqueueAction(act);
	}
})