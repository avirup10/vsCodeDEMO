public class restconsumedem {
    @future(callout=true)
    public static void consumeRe(){
        Http http=new Http();
        HttpRequest req= new HttpRequest();
        req.setendpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setmethod('POST');
        req.setheader('Content-Type','application/json;charset=UTF-8');
        req.setbody('{"name":"penguin"}');
        HttpResponse res=http.send(req);
        if(res.getstatuscode()!=201){
            System.debug('The following returned no result '+res.getstatuscode()+' '+res.getstatus());
        }
        else{
            System.debug(res.getbody());
        }
    }

}