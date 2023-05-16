public class ContactTestDataFactory {


    public static void createContacts(Integer numberOfContacts) {

        List<Contact> contactsToInsert = new List<Contact>();
        for (Integer i = 0; i < numberOfContacts; i++) {
            Contact newContact = new Contact();
            newContact.LastName = 'Last Name' + i;
            newContact.FirstName = 'First Name' + i;
            newContact.Email = 'email' + i + '@example.com';
            newContact.Phone = '123-456-7890';
            contactsToInsert.add(newContact);
        }
        insert contactsToInsert;
    }
}

@isTest
public class ContactTestDataFactoryTest {

    @isTest
    public static void testCreateContacts() {
        Integer numberOfContacts = 50;
        Test.startTest();
        ContactTestDataFactory.createContacts(numberOfContacts);
        Test.stopTest();

        // Verify that the correct number of contacts were created
        //List <Contact> contacts = [SELECT Id, LastName FROM Contact];
        //Integer actualNumberOfContacts = contacts.size();

        Integer actualNumberOfContacts = [SELECT COUNT() FROM Contact];
        System.assertEquals(numberOfContacts, actualNumberOfContacts);

        // Verify that each contact has the required fields populated
        List<Contact> createdContacts = [SELECT LastName, FirstName, Email, Phone FROM Contact];
        for (Contact createdContact : createdContacts) {
            System.assertNotEquals(null, createdContact.LastName);
            System.assertNotEquals(null, createdContact.FirstName);
            System.assertNotEquals(null, createdContact.Email);
            System.assertNotEquals(null, createdContact.Phone);
        }
    }
}