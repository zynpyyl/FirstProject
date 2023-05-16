//Find the min number from the given list

List<Integer> list1=new List<Integer>{4,3,1,2,5};

Integer min=list1[0];

for(Integer each : list1 ){
    if(each<min)
        min=each;
}

System.debug('Min number is '+min);