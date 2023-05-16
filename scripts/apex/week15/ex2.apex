Map<String, Integer> map1 = new Map<String, Integer>();
map1.put('John', 123000);
map1.put('Antony', 100000);
map1.put('Jimmy', 115000);
map1.put('Jalil', 145000);
map1.put('James', 110000);
map1.put('Conor', 85000);
map1.put('Josh', 117000);
map1.put('Cory', 118000);
map1.put('Anderson',125000);
map1.put('Steven', 135000);

//  1 who has the maximum and minimum salary?

List<Integer> salaries=map1.values();
System.debug(salaries); 
    
Integer max=salaries[0];
Integer min=salaries[0];


for(Integer each : map1.values()) {
    if(each<min)
        min=each; 
    if(each>max) 
        max=each;
}

for(String each : map1.keyset()) {
    if(map1.get(each)==min)
        System.debug(each+' gets the min salary: '+map1.get(each)); 
    if(map1.get(each)==max)
        System.debug(each+' gets the max salary: '+map1.get(each));
}



    


    