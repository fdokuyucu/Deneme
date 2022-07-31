public  class ListForEachLoop {

public static void iterateIntegerList() {
 List<Integer> integerList = new List<Integer>();

 integerList.add(10);
 integerList.add(15);
 integerList.add(21);
 integerList.add(15);
 integerList.add(15);

 System.debug('list of random integers= '+ integerList);

 for (integer eachInteger : integerList) {
    System.debug(eachInteger);
 }
}

 public static integer add(list<integer> listInt) {
   Integer returnIt =0;

   for (integer eachInteger : listInt) {
      returnIt = returnIt + eachInteger;
   }

    return returnIt;
}
}