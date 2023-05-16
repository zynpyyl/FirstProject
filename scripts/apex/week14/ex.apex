// Homework : inspired by above 
// Given a long string 
// find out frequency of each Character
// Hint : get a list of all character using split 
// use a map to store character and frequency of that character

String message= 'APEX mAde iT Easy to wOrk With SAles';

List<string> msgList= message.split('');
System.debug('msgList value is : ' + msgList); 
Map<String, Integer> newMap = new Map<String, Integer>();
// newMap.put(keyGoHere, valueGoHere);
Integer count=0;
for(Integer i=0; i<msgList.size();i++){
    String each= msgList.get(i);
    if(!newMap.containsKey(each)){
        newMap.put(each, 1);
    }else{ // no need a condition for else, if it doesnt contain it means it contains
        count=newMap.get(each); // everytime we get the current value and increase it by 1
        newMap.put(each,++count);
    }

}
System.debug('newMap value is : ' + newMap);