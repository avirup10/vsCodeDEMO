({
	calculate : function(component, event, helper) {
        var a=parseInt(component.get("v.Amount"));
        var b=parseInt(component.get("v.Tenure"));
        var c=parseInt(component.get("v.Duration"));
        switch(c){
            case 6:
                component.set("v.Return",a*b*0.12);
                break;
            case 12:
                component.set("v.Return",a*b*0.15);
                break;
            case 24:
                component.set("v.Return",a*b*0.2);
                break;
        }
	},
    validate: function(component, event, helper){
        let inpcmp=component.find("duration");
        if(parseInt(inpcmp.get("v.value"))>24){
            inpcmp.set("v.errors",[{message: 'Value can not be greater than 24'}]);
        }
        else{
            inpcmp.set("v.errors",[{message: ' '}]);
        }
    }
})