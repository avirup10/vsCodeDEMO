({
	validate : function(component, event, helper) {
		var act=component.get("c.getAcc");	
        act.setParams({accNum :component.get("v.AccNum")});
        act.setCallback(this, function(a){
            			component.set("v.Acc",a.getReturnValue());
                        
            			                        });
        $A.enqueueAction(act);
	}
})