import scala.collection.mutable

// Class
class FooBar(val foo: String, val bar: Int) {
  def printFooBar() = println(s"Foo: $foo, Bar: $bar")
}

// Using the class
val foobar = new FooBar("Lorem Ipsum", 123)
foobar.printFooBar()

// Array
val baz = Array(1, 2, 3, 4, 5)
for (i <- baz) println(i)

// Map
val qux = mutable.Map("foo" -> "bar", "baz" -> "qux")
for ((key, value) <- qux) println(s"Key: $key, Value: $value")

// Conditional
if (qux.contains("foo")) println(s"Found foo: ${qux("foo")}")
else println("Did not find foo")

// Match statement
foobar.bar match {
  case 123 => println("Bar is 123")
  case _ => println("Bar is not 123")
}

// Function
def double(x: Int): Int = x * 2
val result = double(6)
println(s"Double of 6 is $result")
