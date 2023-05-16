//Insert 3 contacts with lastName 'TestUpdate'

// List<Contact> conList=new List<Contact>();

// conList.add(new Contact(lastName='TestUpdate'));
// conList.add(new Contact(lastName='TestUpdate'));
// conList.add(new Contact(lastName='TestUpdate'));

//insert conList;

List<Contact> con=[SELECT Id, FirstName, LastName FROM Contact WHERE LastName='TestUpdate'];

//System.debug(con);


// for(Contact each : con) {
//     each.FirstName='Awesome New Name';
// }

// update con;

// for(Contact each : con) {
//     System.debug(each);
// }

List<Contact> con1=[SELECT Id, FirstName, LastName FROM Contact WHERE LastName='TestUpdate'];

// for(Contact each : con1) {
//     System.debug(each);
// }

// delete con1;

List<Contact> con2=[SELECT Id, FirstName, LastName FROM Contact WHERE LastName='TestUpdate'];
for(Contact each : con2) {
    System.debug(each);
}










