@isTest
public with sharing class ContactTriggerTest {
    
    @isTest
    static void handleTest(){

        //arrange
        Contact con1 = new Contact (LastName='Black',FirstName='Joe');
        Contact con2 = new Contact (LastName='Black',FirstName='Eva');
        insert con1;
        insert con2;

        con1.Spouse__c=con2.id;

        //act
        ContactTriggerHandler.isFirstRun=true;
        test.startTest();
        update con1;
        test.stopTest();

        //assert
        List<Contact> cons = [Select id, name, spouse__c, Spouse__r.Name FROM Contact WHERE LastName='Black'];

        System.assertEquals(cons[0].id,cons[1].Spouse__c,'ids should match');
        System.assertEquals(cons[1].id,cons[0].Spouse__c,'ids should match');
    }

}