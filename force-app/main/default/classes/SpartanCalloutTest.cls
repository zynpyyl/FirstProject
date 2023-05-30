@isTest
public class SpartanCalloutTest {

    @isTest static void testGetOneSpartan(){


        //instruct the test to use fake response that implemented in SpartanCalloutMock

        //Test.setMock(interfaceType, mock)

        Test.setMock(HttpCalloutMock.class, new SpartanCalloutMock());

        HttpResponse fakeResponse = SpartanCallout.getOneSpartan(165);
        System.debug(fakeResponse);
        System.debug(fakeResponse.getStatusCode());
        System.debug(fakeResponse.getBody());
        System.debug(fakeResponse.getHeader('Content-type'));

        System.assertNotEquals(NULL, fakeResponse);
        System.assertEquals(200, fakeResponse.getStatusCode());
        System.assertEquals('{"id":165,"name":"Jon Snow","gender":"Male","phone":1234567890}', fakeResponse.getBody());
        System.assertEquals('application/json',fakeResponse.getHeader('Content-type'));


    }
}