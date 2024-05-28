const std = @import("std");

pub fn main() void {
    const stdout = std.io.getStdOut().writer();
    var foobar = 42;
    var foo = "Lorem Ipsum";
    var bar = 123;
    var baz: f64 = 3.14;
    var flag = true;

    stdout.print("foobar: {}\n", .{foobar}) catch {};
    stdout.print("foo: {}\n", .{foo}) catch {};
    stdout.print("bar: {}\n", .{bar}) catch {};
    stdout.print("baz: {}\n", .{baz}) catch {};
    stdout.print("flag: {}\n", .{flag}) catch {};

    // Control Structures
    if (foobar > bar) {
        stdout.print("foobar is greater than bar\n", .{}) catch {};
    } else {
        stdout.print("foobar is not greater than bar\n", .{}) catch {};
    }

    // Loops
    for (bar) |i| {
        stdout.print("Loop iteration: {}\n", .{i}) catch {};
    }

    var i: usize = 0;
    while (i < bar) : (i += 1) {
        if (i == 5) {
            break;
        }
        stdout.print("While loop iteration: {}\n", .{i}) catch {};
    }

    // Switch statement
    const value = 2;
    switch (value) {
        1 => stdout.print("Value is 1\n", .{}) catch {},
        2 => stdout.print("Value is 2\n", .{}) catch {},
        else => stdout.print("Value is something else\n", .{}) catch {},
    }

    // Functions
    const result = add(foobar, bar);
    stdout.print("Addition result: {}\n", .{result}) catch {};

    // Error handling
    var res = try divide(10, 2);
    stdout.print("Division result: {}\n", .{res}) catch {};
    res = divide(10, 0) catch {
        stdout.print("Caught divide by zero error\n", .{}) catch {};
        return;
    };
}

// Function definition
fn add(a: i32, b: i32) i32 {
    return a + b;
}

// Function with error handling
fn divide(a: i32, b: i32) !i32 {
    if (b == 0) {
        return error.DivideByZero;
    }
    return a / b;
}

// Custom error type
const error = struct {
    DivideByZero: void,
};

// Struct and enum
const CustomType = struct {
    field1: i32,
    field2: []const u8,
};

const Colors = enum {
    red,
    green,
    blue,
};

fn useStruct() void {
    var instance = CustomType{
        .field1 = 7,
        .field2 = "example",
    };
    var color = Colors.red;
}


