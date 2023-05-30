@isTest
public class SpartanCalloutMock implements HttpCalloutMock {
    
    //we are trying to create a fake response so we can use it in the test class
    //we will do it with HttpCalloutMock interface

    public HttpResponse respond(HttpRequest request){

        //provide fake response details

        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setHeader('Content-type', 'application/json');
        response.setBody('{"id":165,"name":"Jon Snow","gender":"Male","phone":1234567890}');


        return response;




    }
    



}