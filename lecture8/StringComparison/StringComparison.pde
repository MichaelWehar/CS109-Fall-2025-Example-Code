String x = "apple";
String y = "orange";
String z = "AppLE ";
// equals
if(x.equals(y)) {
  println("x and y are equal.");
} else if(x.equals(z)) {
  println("x and z are equal.");
} else if(x.equals(z.toLowerCase())) {
  println("x and z.toLowerCase() are equal.");
} else if(x.equals(z.toLowerCase().trim())) {
  println("x and z are equal if you make z lowercase and trim leading / trailing spaces.");
} else {
  println("None of them are equal.");
}
// compareTo
if(x.compareTo(y) < 0) {
  println("x comes before y.");
}
if(y.compareTo(z) < 0) {
  println("y comes before z.");
}
if(x.compareTo(z) < 0) {
  println("x comes before z.");
} else if(x.compareTo(z) > 0) {
  println("x comes after z.");
}
if(x.compareTo(z.toLowerCase().trim()) == 0) {
  println("x and z are equal if you make z lowercase and trim leading / trailing spaces.");
}
// Extra test case
println(x.compareTo("apples") < 0);
