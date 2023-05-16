// Suppose you have a custom object called "Product__c" which has two fields: 
// "Name" and "Price__c". You also have a Map<String, Decimal> called "priceMap" 
// that contains the names and prices of various products.

// Write an Apex code snippet to loop through the entries in the priceMap, 
// and for each entry, create a new Product__c record with the corresponding 
// name and price, and insert it into Salesforce.

Map<String,Decimal> priceMap = new Map<String,Decimal>();
    priceMap.put('laptop',900);
    priceMap.put('phone',1200);
    priceMap.put('airpod',150);

List<Product__c> prodList=new List<Product__c>();

for(String each : priceMap.keySet()) {
    Product__c pro=new Product__c();
    pro.name=each;
    pro.Price__c=priceMap.get(each);
    prodList.add(pro);
}

insert prodList;
    
