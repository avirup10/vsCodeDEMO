public class RestCons {
    public static void consRest(){
        Http http=new Http();
        HttpRequest req=new HttpRequest();
        req.setendpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setmethod('POST');
        req.setheader('Content-Type','application/json;charset=UTF-8');
        req.setbody('{"name":"sheep"}');
        HttpResponse res=http.send(req);
        if(res.getStatusCode()!= 201){
            System.debug('The status code returned was not expected '+res.getstatuscode()+' '+res.getstatus());
        }
        else{
            System.debug(res.getbody());
        }
    }

}