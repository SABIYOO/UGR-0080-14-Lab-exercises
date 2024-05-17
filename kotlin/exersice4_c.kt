fun main() {
    println("Enter a number:")
    val number = readLine()?.toInt() ?: 0

    var reverse = 0
    var temp = number

    while (temp != 0) {
        val remainder = temp % 10
        reverse = reverse * 10 + remainder
        temp /= 10
    }

    val isPalindrome = number == reverse

    if (isPalindrome) {
        println("$number is a palindrome")
    } else {
        println("$number is not a palindrome")
    }
}