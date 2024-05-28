import kotlin.random.Random

// Class
data class FooBar(val foo: String, val bar: Int)

// Function
fun printFooBar(foobar: FooBar) {
    println("Foo: ${foobar.foo}, Bar: ${foobar.bar}")
}

fun main() {
    // Using the class and function
    val foobar = FooBar("Lorem Ipsum", 123)
    printFooBar(foobar)

    // Using a list
    val baz = listOf(1, 2, 3, 4, 5)
    for (i in baz) {
        println(i)
    }

    // Using a map
    val qux = mapOf("foo" to "bar", "baz" to "qux")
    for ((key, value) in qux) {
        println("Key: $key, Value: $value")
    }

    // Using control structures
    if (qux.containsKey("foo")) {
        println("Found foo: ${qux["foo"]}")
    } else {
        println("Did not find foo")
    }

    // Using a when statement
    when (foobar.bar) {
        123 -> println("Bar is 123")
        else -> println("Bar is not 123")
    }

    // Using a lambda function
    val random = Random.nextInt(10)
    val result = { num: Int -> if (num > 5) "Greater than 5" else "Less or equal to 5" }
    println("Random number $random is ${result(random)}")
}
