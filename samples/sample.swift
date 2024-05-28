import Foundation

class FooBar {
    var foo: String
    var bar: Int

    init(foo: String, bar: Int) {
        self.foo = foo
        self.bar = bar
    }

    func print() {
        print("Foo: \(self.foo), Bar: \(self.bar)")
    }
}

// Using the class
let foobar = FooBar(foo: "Lorem Ipsum", bar: 123)
foobar.print()

// Array
let baz = [1, 2, 3, 4, 5]
for i in baz {
    print(i)
}

// Dictionary
let qux = ["foo": "bar", "baz": "qux"]
for (key, value) in qux {
    print("Key: \(key), Value: \(value)")
}

// Conditional
if qux.keys.contains("foo") {
    print("Found foo: \(qux["foo"] ?? "")")
} else {
    print("Did not find foo")
}

// Switch statement
switch foobar.bar {
case 123:
    print("Bar is 123")
default:
    print("Bar is not 123")
}

// Function with closure
let numbers = [1, 2, 3, 4, 5]
let doubledNumbers = numbers.map { $0 * 2 }
print(doubledNumbers)
