// char's just store a numerical value
char x = 97;
char y = 'a';
println("x is the char: " + x);
println("y is the char: " + y);
if(x == y) {
  println("x and y are equals!");
}
// You can compare chars!
if('b' < 'e') {
  println("'b' is less than 'e'.");
}
// You can get single chars from Strings
String s = "Hello World!";
println(s.charAt(1) + "" + s.charAt(2) + "" + s.charAt(3) + "" + s.charAt(4));
// Same as this!
println(s.substring(1, 5));
