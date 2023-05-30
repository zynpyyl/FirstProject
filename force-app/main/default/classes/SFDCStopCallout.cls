public class SFDCStopCallout {
    //method to hit SFDC Stop Blogs API and get the response    
    public static HttpResponse getBlogs() {
        //create an instance of HTTP class
        HTTP http = new HTTP();
        //create an instance of HTTP request class
        HttpRequest request = new HttpRequest();
        //set the endpoint and method
        request.setEndpoint('https://api.spoonacular.com/recipes/random?apiKey= 1f5f5abf17954367840779b1e1238f1f');
        request.setMethod('GET');
        //hit the API and get the response
        HttpResponse response = new HttpResponse();
        System.debug(response.getBody());
        //check the status code
        if(response.getStatusCode()==200){
            //deserialize the json response
            Map<String,Object> deserializedData = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
            List<Object> blogList= (List<Object>) deserializedData.get('blogs');
            //display the author
            System.debug('Author is '+ deserializedData.get('author'));
            //display the information of each blog one by one
            System.debug(blogList);
            // for (Object each : blogs) {
            //     System.debug(each.id);
            //     System.debug(each.title);
            //     System.debug(each.url);
            // }

        }

        return response;

    }
}