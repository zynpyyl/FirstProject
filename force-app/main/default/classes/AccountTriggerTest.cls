@isTest
public class AccountTriggerTest {

    @isTest static void TestTrigger(){


        //arrange
        //prepare the test data
        Account a1=new Account(Name='Salesforce', BillingStreet='Broadway');
        insert a1;
        Contact c1=new Contact(LastName='Brown', AccountId=a1.id);
        insert c1;

        a1.BillingStreet='Longway';

        //act
        //take an action

        test.startTest();

        update a1;

        test.stopTest();

        //assert

        //write the query to retrieve the updated version

        Account a1updated=[Select id, name, billingStreet, (Select Id, LastName, MailingStreet from Contacts)
                            from Account where name='Salesforce'];

        //System.assertEquals(expected, actual)
        Assert.areEqual('Longway',a1updated.contacts[0].MailingStreet);
















    }





    
}