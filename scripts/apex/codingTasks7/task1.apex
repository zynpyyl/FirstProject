//1. Write an Apex code that create List or Array of 10 Integer values. 
//  - remove duplicate and print it out 
//  - print out the unique item count and difference between total 
// list item count

List<Integer> list1 = new List<Integer>{1,2,1,4,2,6,1,8,3,10};

Set<Integer> set1 = new Set<Integer>(list1);
System.debug(set1); 

System.debug('Number of unique elements is '+ set1.size());

System.debug('Difference is '+(list1.size()-set1.size())); 





















/*
Integer uniqueNumber=0;
for(Integer each : list1) {
    Integer count=0;
    for(Integer each1 : list1) {
        if(each1==each)
        count++;
    }
        if(count==1)
        uniqueNumber++;  
}

System.debug('number of unique items is : ' + uniqueNumber);  

System.debug('difference is : ' + (list1.size()-uniqueNumber)); */








