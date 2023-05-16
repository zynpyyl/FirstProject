//Merge the two given lists

List<Integer> list1 = new List<Integer>{ 1, 2, 3, 4, 5 };
List<Integer> list2 = new List<Integer>{ 6, 7, 8, 9, 10 };

for (Integer each : list2) {
  list1.add(each);
}

System.debug(list1);
