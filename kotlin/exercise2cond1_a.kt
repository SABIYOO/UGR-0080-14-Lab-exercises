fun main() {
    println("Enter the number of hours worked:")
    val hoursWorked = readLine()?.toDouble() ?: 0.0

    println("Enter the hourly rate:")
    val hourlyRate = readLine()?.toDouble() ?: 0.0

    val regularHours = if (hoursWorked <= 40) hoursWorked else 40.0
    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0.0

    val regularPay = regularHours * hourlyRate
    val overtimePay = overtimeHours * (hourlyRate * 1.5)

    val totalPay = regularPay + overtimePay

    println("Regular Pay: $regularPay")
    println("Overtime Pay: $overtimePay")
    println("Total Pay: $totalPay")
}