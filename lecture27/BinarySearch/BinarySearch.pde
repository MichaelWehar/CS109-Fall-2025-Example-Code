// l stands for left index bound
// r stands for right index bound
boolean binarySearchHelper(int[] arr, int value, int l, int r) {
    if(l > r) {
        return false;
    } else {
        int mid = (r - l) / 2 + l; // (l + r) / 2;
        if(value < arr[mid]) { // continue searching in left subarray
            return binarySearchHelper(arr, value, l, mid - 1);
        } else if(value > arr[mid]) { // continue searching in right subarray
            return binarySearchHelper(arr, value, mid + 1, r);
        } else { // we found it!
            // println(mid);
            return true;
        }
    }
}
boolean binarySearch(int[] arr, int value) {
    return binarySearchHelper(arr, value, 0, arr.length - 1);
}
void setup() {
    int[] arr = {1, 5, 9, 12, 25, 40, 41, 46, 50, 94, 101};
    int k1 = 40;
    int k2 = 82;
    println("Does arr contain k1? " + binarySearch(arr, k1));
    println("Does arr contain k2? " + binarySearch(arr, k2));
}
