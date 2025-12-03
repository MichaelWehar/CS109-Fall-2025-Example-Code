import java.util.Set;
import java.util.Map;
void setup() {
  // Read from file
  String filename = "words2.txt";
  String[] words = loadStrings(filename);
  // Create our map
  Map<String, Integer> wordCount = new HashMap<String, Integer>();
  // Add all of the words to our map and count how many times they appear
  for(int i = 0; i < words.length; i++) {
    String key = words[i];
    if(!wordCount.containsKey(key)) { // adds the key to the map
      wordCount.put(key, 1);
    } else { // increments the value associated with the key by one
      Integer value = wordCount.get(key);
      wordCount.replace(key, value + 1);
    }
  }
  // Print all keys and their associated values
  Set<String> keys = wordCount.keySet();
  for(String key : keys) {
    Integer value = wordCount.get(key);
    println("(" + key + "," + value + ")");
  }
}
