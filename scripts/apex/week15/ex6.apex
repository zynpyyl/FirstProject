// Create 5 new Accounts with Name Acc1, Acc2....Acc5
// Insert them 
// Add the accounts to a Map<Id,Account>
// print the new map

List<Account> accToInsert = new List<Account>();

for(Integer i=1; i<=5 ;i++) {
    Account acc = new Account (Name='Acc'+i);
    accToInsert.add(acc);   
}

insert accToInsert;

Map<Id,Account> accMap = new Map<Id,Account>(accToInsert);

System.debug(accMap); 

//Create a new Account List and copy the old account list
//update the accounts' Industry as 'Technology'
//update accounts with DML
//create a new map and add the updated accounts
//print out the map again

List<Account> accToUpdate = new List<Account>(accToInsert);

for(Account each : accToUpdate) {
    each.Industry='Technology';
}

update accToUpdate;

System.debug('accMap');

Map<Id,Account> accMapNew = new Map<Id,Account>(accToUpdate);

System.debug(accMapNew); 
    