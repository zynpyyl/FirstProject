public class CallOut{


    public static void getCovidData(){

        String url = 'https://api.covidtracking.com/v1/us/current.json'; 

        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMethod('GET');
        

        Http http = new Http(); 
        HttpResponse response = new HttpResponse();
        response=http.send(request);
        
        String body = response.getBody();

        System.debug('res.getStatusCode() value is : ' + response.getStatusCode());
        System.debug('res.getBody() value is : ' + body);

        List<Object> deserializedList = (List<Object>)JSON.deserializeUntyped(body);

        Map<String, Object> firstObjectMap = (Map<String, Object>)deserializedList[0];    

        Covid_Info__c info = new Covid_Info__c();

        info.states__c=(String)firstObjectMap.get('state');
        info.positive__c=(Decimal)firstObjectMap.get('positive');
        info.negative__c=(Decimal)firstObjectMap.get('negative');
        info.pending__c=(Decimal)firstObjectMap.get('pending');
        info.Received_Date__c=date.today();

        

       

    }


}

/*
// Check if a record already exists with today's date
                List<Covid_Info__c> existingRecords = [SELECT Id FROM Covid_Info__c WHERE Received_Date__c = TODAY LIMIT 1];
                if (existingRecords.isEmpty()) {
                    insert covidInfo;
                } else {
                    covidInfo.Id = existingRecords[0].Id;
                    update covidInfo;
                }
            }
        } else {
            System.debug('HTTP request failed with status code: ' + response.getStatusCode());
        }
    }
*/