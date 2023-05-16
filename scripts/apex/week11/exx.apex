List<Integer> list1=new List<Integer>{1,2,3,4,5,4,6,4,7};

while(list1.contains(4)){
    list1.remove(list1.indexOf(4));
}

System.debug(list1);