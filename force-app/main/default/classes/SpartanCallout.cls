public class SpartanCallout {

    //create a method that will return a single spartan according to Id
    //return HttpResponse Object

    public static HttpResponse getOneSpartan(Integer Id){

        Http http = new Http();

        //create HttpRequest Object to provide details 
        HttpRequest request = new HttpRequest();
        //use setEndpoint to provide the url
        request.setEndpoint('https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/'+id);
        //use setMethod to provide the http method
        request.setMethod('GET');
        //send this request using the http Object send method
        HttpResponse response = http.send(request);
        //if the response is successfull, deserialize it
        if(response.getStatusCode()==200){
            System.debug('body is :'+response.getBody());
            // Map<String,Object> deserializedJson = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
            // System.debug('id is :'+deserializedJson.get('id'));
            // System.debug('name is :'+deserializedJson.get('name'));
            // System.debug('gender is :'+deserializedJson.get('gender'));

            //wrapper class

            //JSON.deserialize(jsonString, apexType)
            Spartan deserializedJson = (Spartan) JSON.deserialize(response.getBody(), Spartan.class);
            System.debug(deserializedJson.Id);
            System.debug(deserializedJson.name);
            System.debug(deserializedJson.gender);



        }

        return response;



    }

    
    
}

//'https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/'