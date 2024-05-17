fun main() {
    println("Enter the month (1-12):")
    val month = readLine()?.toInt() ?: 0

    println("Enter the day (1-31):")
    val day = readLine()?.toInt() ?: 0

    val season = when (month) {
        1, 2 -> "Winter"
        3 -> if (day >= 20) "Spring" else "Winter"
        4, 5 -> "Spring"
        6 -> if (day >= 21) "Summer" else "Spring"
        7, 8 -> "Summer"
        9 -> if (day >= 22) "Fall" else "Summer"
        10, 11 -> "Fall"
        12 -> if (day >= 21) "Winter" else "Fall"
        else -> "Invalid month"
    }

    println("The season is: $season")
}