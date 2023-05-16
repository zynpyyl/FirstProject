//create a map to represent a phonebook
//key : name String
//valur : phone Long

Map<String,Long> phoneBook = new Map<String,Long>();

//add 5 entry
phoneBook.put('Zeynep', 5078684141L);
phoneBook.put('Zehra', 5054014765L);
phoneBook.put('Zeliha', 5304900907L);
phoneBook.put('Murat', 5367272859L);
phoneBook.put('Melek', 5454950907L);

//print map
System.debug(phoneBook);

//get Zone of the items using key
System.debug('Zehra\'s phone number : '+phoneBook.get('Zehra'));

//check one of your item using containsKey method
System.debug('Zeynep\'s phone number exists in phonebook :'+phoneBook.containsKey('Zeynep'));

//remove one of your items
phoneBook.remove('Murat');
System.debug(phoneBook);

//Loop your Map to show key and value together
//keys
Set<String> allKeys = phoneBook.keySet();
System.debug(allKeys);

//values
List<Long> allValues = phoneBook.values();
System.debug(allValues);

//Loop your map to show key and value together

for(String eachKey : allKeys){ //for(String eachKey : phoneBook.keySet())
    System.debug( 'key: '+eachKey+' , '+'value: '+ phoneBook.get(eachKey) );
}

//in another loop only show the phone number if the name starts with Z

for(String eachKey : allKeys){
    if(eachKey.startsWith('Z')){
    System.debug( 'key: '+eachKey+' , '+'value: '+ phoneBook.get(eachKey) );
    }
}
