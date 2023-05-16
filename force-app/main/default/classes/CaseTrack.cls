public class CaseTrack {
    @future
    public static void CaseTracker() {


        List<Account> accList = [Select id, name, number_of_phone_cases__c, number_of_web_cases__c, number_of_email_cases__c, (select id, origin from cases) from Account where id!=null];
        
        for(Account acc : accList){
            if(acc.Cases.size()>0){
            for(Case eachCase : acc.cases){
                if(eachCase.Origin=='phone')      
                    acc.number_of_phone_cases__c=(acc.number_of_phone_cases__c==null)? 1 : acc.number_of_phone_cases__c +1;
                else if(eachCase.Origin=='web')
                    acc.number_of_web_cases__c=(acc.number_of_web_cases__c==null)? 1 : acc.number_of_web_cases__c +1;
                else if(eachCase.Origin=='email')
                    acc.number_of_email_cases__c=(acc.number_of_email_cases__c==null)? 1 : acc.number_of_email_cases__c +1;
                }
            }
            
        }
    

        update accList;

    }
}



//create a future method to count how many cases 
//are created through web, phone, email.
//you need to put the counted value on Account record in 3 different fields
//(create custom fields)
