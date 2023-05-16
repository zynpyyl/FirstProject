//Find the max number from the given list

List<Integer> list1 = new List<Integer>{ 1, 2, 3, 4, 5 };

Integer max = list1[0];

for (Integer each : list1) {
  if (each > max)
    max = each;
}

System.debug('Max number is ' + max);
