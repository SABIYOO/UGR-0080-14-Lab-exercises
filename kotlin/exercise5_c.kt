class ShoppingCart {
    private val items = mutableListOf<String>()

    fun addItem(item: String) {
        items.add(item)
    }

    fun removeItem(item: String): Boolean {
        return items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        // Calculate the total price logic here
        // Return the total price
        return 0.0
    }
}

fun main() {
    val shoppingCart = ShoppingCart()

    shoppingCart.addItem("Item 1")
    shoppingCart.addItem("Item 2")
    shoppingCart.addItem("Item 3")

    val removed = shoppingCart.removeItem("Item 2")
    if (removed) {
        println("Item 2 removed successfully")
    } else {
        println("Item 2 not found in the cart")
    }

    val totalPrice = shoppingCart.calculateTotalPrice()
    println("Total price: $totalPrice")
}