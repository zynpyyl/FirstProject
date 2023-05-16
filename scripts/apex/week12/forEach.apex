List<String> myStrlist = new List<String>{'Sachin','Ganguly','Dravid'};
    for(String each : myStrlist){
        each += 'cricket'; // ***Not Possible*** 
        System.debug('Current value : ' + each);     
    }   
    System.debug(myStrlist);

List<Integer> myIntList = new List<Integer>{2,3,4,5,6,7,8};
    for(Integer each : myIntList) {
        each=each*2;
        System.debug('Current value : ' + each);
    }
System.debug(myIntList); 
        