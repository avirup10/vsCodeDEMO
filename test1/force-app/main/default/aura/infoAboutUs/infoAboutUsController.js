({
	validate : function(component, event, helper) {
        helper.changecss(component,event);
		let inpcmp=component.find("age");
        if(parseInt(inpcmp.get("v.value"))<18){
            inpcmp.set("v.errors",[{message: 'Age can not be less than 18'}]);
        }
        else{
            inpcmp.set("v.errors",[{message: ' '}]);
        }
	}
})