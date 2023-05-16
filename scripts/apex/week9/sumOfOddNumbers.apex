//sum of odd numbers between 1-100

List<Integer> list1=new List<Integer>();

for(Integer i=1;i<=20;i++){
    if(math.mod(i,2)==0){
    list1.add(i);
    }
}

System.debug(list1);

List<Integer> list2=new List<Integer>();

for(Integer i=0;i<=20;i+=2){
    if(i>0){
        list2.add(i);
    }
}

System.debug(list2);

list2.add(10);

System.debug(list2);


