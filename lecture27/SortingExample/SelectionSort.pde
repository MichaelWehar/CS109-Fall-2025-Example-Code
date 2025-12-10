import java.util.List;

class SelectionSort<E extends Comparable<E>> implements Sort<E> {
    void swap(List<E> list, int x, int y) {
        E temp = list.get(x);
        list.set(x, list.get(y));
        list.set(y, temp);
    }
    // Runtime: n + (n-1) + (n-2) + ... + 2 + 1 which is O(n^2)
    void sort(List<E> list) {
        // Increment i and repeat
        for (int i = 0; i < list.size(); i++) {
            int indexOfIthSmallestElement = i;
            // Scan through the list
            for (int j = i + 1; j < list.size(); j++) {
                E currentSmallest = list.get(indexOfIthSmallestElement);
                E jthElement = list.get(j);
                if (currentSmallest.compareTo(jthElement) > 0) {
                    indexOfIthSmallestElement = j;
                }
            }
            // Put the ith smallest element into the ith position
            swap(list, i, indexOfIthSmallestElement);
        }
    }
}
