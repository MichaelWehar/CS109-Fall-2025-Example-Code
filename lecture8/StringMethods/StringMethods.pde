String x = "BrYN MaWR COLLEge";
// Basic String Methods
println("Length : " + x.length());
println("Char at index 3 : " + x.charAt(3));
println("Lowercase : " + x.toLowerCase());
println("Where is 1st 'L' : " + x.indexOf("L"));
println("Contains oll? : " + x.contains("oll"));
println("Substring 1 : " + x.substring(0, 4));
println("Substring 2 : " + x.substring(5, 9));
// Chaining together method calls
println("Contains oll? : " + x.toLowerCase().contains("oll"));
