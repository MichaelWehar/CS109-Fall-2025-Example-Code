void setup() {
  // Create selection sort object
  Sort<Integer> mySort = new SelectionSort<Integer>();

  // Expected outputs
  String output1 = "[-4, 1, 2, 5, 9, 20, 100]";
  String output2 = "[]";

  // Test 1: Simple example
  ArrayList<Integer> list1 = new ArrayList<Integer>();
  list1.add(5);
  list1.add(9);
  list1.add(2);
  list1.add(1);
  list1.add(20);
  list1.add(-4);
  list1.add(100);
  mySort.sort(list1);
  println("Test 1 == " + list1.toString().equals(output1));

  // Test 2: Potential edge case
  ArrayList<Integer> list2 = new ArrayList<Integer>();
  mySort.sort(list2);
  println("Test 2 == " + list2.toString().equals(output2)); 
}
