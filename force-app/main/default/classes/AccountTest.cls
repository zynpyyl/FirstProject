@isTest
private class AccountTest {

@isTest
static void afterUpdateTest(){

//Arrange

List<Account> accList= new List<Account>();
for(Integer i=1; i<=5; i++){
accList.add(new Account(Name='Test'+i, BillingStreet='Beogradska #'+i));

}
insert accList;
List<Contact> updateList=new List<Contact>();
for(Account each:accList){
updateList.add(new Contact(LastName='Test', AccountId=each.Id));
}
insert updateList;


for(Account each: accList){
    each.BillingStreet='Longway';
}
test.startTest();
 update accList;
test.stopTest();



List<Contact> conList=[select id, AccountId, MailingStreet from contact where AccountId in: accList];
System.debug(conList);

//for(Contact each : conList)
//System.assertEquals('Longway', each.MailingStreet);

System.assertEquals('Longway', conList[0].MailingStreet);
}
}