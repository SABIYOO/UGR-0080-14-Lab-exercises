fun main() {
    println("Enter the length of side 1:")
    val side1 = readLine()?.toDouble() ?: 0.0

    println("Enter the length of side 2:")
    val side2 = readLine()?.toDouble() ?: 0.0

    println("Enter the length of side 3:")
    val side3 = readLine()?.toDouble() ?: 0.0

    if (side1 == side2 && side2 == side3) {
        println("Triangle is equilateral")
    } else if (side1 == side2 || side1 == side3 || side2 == side3) {
        println("Triangle is isosceles")
    } else {
        println("Triangle is scalene")
    }
}