fun sortArray(array: IntArray): IntArray {
    val sortedArray = array.copyOf()
    sortedArray.sort()
    return sortedArray
}