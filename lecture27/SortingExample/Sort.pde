import java.util.List;

interface Sort<E extends Comparable<E>> {
    // Used for in place sorting
    void sort(List<E> list);
}
