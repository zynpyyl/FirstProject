/*8.  Write an Apex code that create 2 Set of Integer with 5 values
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
      -  HINT : containsAll method
   -  add all items in the set 1 into set 2
   -  check if all items in set 2 exists in set 1
   -  check if all items in set 1 exists in set 2
   -  remove all items exists in set 2 from set 1
      -  HINT : removeAll method */
Set<Integer> set1= new Set<Integer>{1,2,3,4,5};
Set<Integer> set2= new Set<Integer>{6,7,8,9,10};

System.debug('itemsSet2ExistsInSet1 : ' + set1.containsAll(set2)); 
System.debug('itemsSet1ExistsInSet2 : ' + set2.containsAll(set1));

set2.addAll(set1);
System.debug(set2); 

System.debug('itemsSet2ExistsInSet1 : ' + set1.containsAll(set2)); 
System.debug('itemsSet1ExistsInSet2 : ' + set2.containsAll(set1));


set2.removeAll(set1);

System.debug(set2); 


