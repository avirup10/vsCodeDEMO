({
	add1 : function(component,event,helper) {
        sessionStorage.setItem("test1", component.get("v.num1"));
        component.set("v.num1","");
    },
    equal1 : function(component,event,helper){
      let num = Number(component.get("v.num1"));
       component.set("v.res",Number(sessionStorage.getItem("test1"))+num);
        component.set("v.num1","");
    }
       
})