using System;
using System.Collections.Generic;

// Class
public class FooBar
{
    public string Foo { get; set; }
    public int Bar { get; set; }

    public FooBar(string foo, int bar)
    {
        this.Foo = foo;
        this.Bar = bar;
    }

    public void Print()
    {
        Console.WriteLine($"Foo: {this.Foo}, Bar: {this.Bar}");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        // Using the class
        var foobar = new FooBar("Lorem Ipsum", 123);
        foobar.Print();

        // Using a list
        var baz = new List<int> { 1, 2, 3, 4, 5 };
        foreach (var i in baz)
        {
            Console.WriteLine(i);
        }

        // Using a dictionary
        var qux = new Dictionary<string, string>
        {
            { "foo", "bar" },
            { "baz", "qux" }
        };

        foreach (var kvp in qux)
        {
            Console.WriteLine($"Key: {kvp.Key}, Value: {kvp.Value}");
        }

        // Using control structures
        if (qux.ContainsKey("foo"))
        {
            Console.WriteLine($"Found foo: {qux["foo"]}");
        }
        else
        {
            Console.WriteLine("Did not find foo");
        }

        // Using a switch statement
        switch (foobar.Bar)
        {
            case 123:
                Console.WriteLine("Bar is 123");
                break;
            default:
                Console.WriteLine("Bar is not 123");
                break;
        }
    }
}
