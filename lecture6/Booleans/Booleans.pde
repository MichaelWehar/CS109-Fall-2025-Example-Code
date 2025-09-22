// Testing booleans and relational operators
boolean a = true;
boolean b = 10 < 15;
int x = 5;
int y = 7;
boolean c = x + 1 > y;
println("a = " + a);
println("b = " + b);
println("c = " + c);
// Testing logical operators
boolean d = a && b && c;
boolean e = a && b && !c;
boolean f = !a || c;
println("d = " + d);
println("e = " + e);
println("f = " + f);
// Testing if statements
if(c) {
  println("CASE 1");
} else if(!a) {
  println("CASE 2");
} else {
  println("CASE 3");
}
if(x < 6 && e) {
  println("It worked!");
}
