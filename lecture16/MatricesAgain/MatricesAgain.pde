void setup() {
  // This matrix is said to be 3 by 4.
  // Meaning it has 3 rows and 4 cols.
  int[][] m = new int[3][4];
  // Setting each array within m
  m[0] = new int[]{5, 0, 7, 4};
  m[1] = new int[]{1, 8, 4, 0};
  m[2] = new int[]{0, 2, 0, 6};
  // Print all elements
  printMatrix(m);
}
void printMatrix(int[][] m) {
  int rows = m.length;
  if(rows > 0) {
    int cols = m[0].length;
    for(int i = 0; i < rows; i++) {
      // Suggestion: int cols = m[i].length;
      for(int j = 0; j < cols; j++) {
        print(m[i][j] + " ");
      }
      println();
    }
  }
}
