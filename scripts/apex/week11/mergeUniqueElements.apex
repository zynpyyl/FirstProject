//Merge the unique elements of two given lists

List<Integer> list1 = new List<Integer>{ 1, 2, 3, 4, 5 };
List<Integer> list2 = new List<Integer>{ 4, 5, 6, 7, 8, 9, 10 };
Set<Integer> set1 = new Set<Integer>();

for (Integer each : list1) {
  set1.add(each);
}
for (Integer each : list2) {
  set1.add(each);
}

System.debug(set1);
