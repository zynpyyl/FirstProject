public class Spoonacular {

    //Get Random Recipes
    public static HttpResponse getRecipe(){
        //create an instance of HTTP class
        HTTP http = new HTTP();
        //create an instance of HTTP request class
        HttpRequest request = new HttpRequest();
        //set the endpoint and method
        request.setEndpoint('https://api.spoonacular.com/recipes/random?apiKey=1f5f5abf17954367840779b1e1238f1f');
        request.setMethod('GET');
        //hit the API and get the response
        HttpResponse response = http.send(request);
        System.debug('statuscode :'+response.getStatusCode());
        //check the status code
        if(response.getStatusCode()==200){
            System.debug('Response : '+ response.getBody());
        }
        return response;

    }
    //Get Recipe Information
    public static HttpResponse getRecipeInfo(String recipeId){
        //create an instance of HTTP class
        HTTP http = new HTTP();
        //create an instance of HTTP request class
        HttpRequest request = new HttpRequest();
        //set the endpoint and method
        request.setEndpoint('https://api.spoonacular.com/recipes/'+recipeId+'/information?apiKey=1f5f5abf17954367840779b1e1238f1f');
        request.setMethod('GET');
        //hit the API and get the response
        HttpResponse response = http.send(request);
        System.debug('statuscode :'+response.getStatusCode());
        //check the status code
        if(response.getStatusCode()==200){
            System.debug('Response : '+ response.getBody());
        }
        return response;


    }
 
}