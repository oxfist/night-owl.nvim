// Importing modules
use std::collections::HashMap;

// Struct
struct FooBar {
    foo: String,
    bar: i32,
}

// Enum
enum Baz {
    Lorem,
    Ipsum,
}

// Function
fn create_foobar(foo: String, bar: i32) -> FooBar {
    FooBar { foo, bar }
}

// Implementation block
impl FooBar {
    fn print(&self) {
        println!("Foo: {}, Bar: {}", self.foo, self.bar);
    }
}

// Usage of the function
let foobar = create_foobar("Lorem Ipsum".to_string(), 123);
foobar.print();

// Pattern matching
match Baz::Lorem {
    Baz::Lorem => println!("Lorem"),
    Baz::Ipsum => println!("Ipsum"),
}

// Loop
for i in 0..10 {
    println!("{}", i);
}

// HashMap
let mut map: HashMap<String, i32> = HashMap::new();
map.insert("one".to_string(), 1);
map.insert("two".to_string(), 2);

// Option
let three = map.get("three");
match three {
    Some(three) => println!("{}", three),
    None => println!("No three found"),
}

// Result
let result: Result<i32, &str> = Ok(123);
match result {
    Ok(val) => println!("{}", val),
    Err(err) => println!("Error: {}", err),
}
