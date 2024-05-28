package main

import (
    "fmt"
    "strings"
)

// Struct
type FooBar struct {
    Foo string
    Bar int
}

// Function
func NewFooBar(foo string, bar int) *FooBar {
    return &FooBar{Foo: foo, Bar: bar}
}

// Method
func (fb *FooBar) Print() {
    fmt.Printf("Foo: %s, Bar: %d\n", fb.Foo, fb.Bar)
}

// Interface
type Printer interface {
    Print()
}

// Function using interface
func PrintTwice(p Printer) {
    p.Print()
    p.Print()
}

func main() {
    // Using the struct and methods
    foobar := NewFooBar("Lorem Ipsum", 123)
    foobar.Print()

    // Using the interface
    PrintTwice(foobar)

    // Using the strings package
    fmt.Println(strings.Contains(foobar.Foo, "Lorem"))

    // Using a map
    m := make(map[string]string)
    m["foo"] = "bar"
    m["baz"] = "qux"
    fmt.Println(m)

    // Using control structures
    for key, value := range m {
        fmt.Printf("Key: %s, Value: %s\n", key, value)
    }

    if val, ok := m["foo"]; ok {
        fmt.Println("Found foo:", val)
    } else {
        fmt.Println("Did not find foo")
    }
}
