fun main() {
    println("Enter the lower bound of the range:")
    val lowerBound = readLine()?.toInt() ?: 0

    println("Enter the upper bound of the range:")
    val upperBound = readLine()?.toInt() ?: 0

    var number = lowerBound

    while (number <= upperBound) {
        var isPrime = true
        var divisor = 2

        while (divisor <= number / 2) {
            if (number % divisor == 0) {
                isPrime = false
                break
            }
            divisor++
        }

        if (isPrime && number > 1) {
            println(number)
        }

        number++
    }
}