# Julia script: foobar.jl

# Defining variables
foo = "Lorem Ipsum"
bar = 123

# Displaying variables
println("Foo: ", foo)
println("Bar: ", bar)

# Using an array
baz = [1, 2, 3, 4, 5]
println(baz)

# Using a dictionary
qux = Dict("foo" => "bar", "baz" => "qux")
println(qux)

# Using control structures
if haskey(qux, "foo")
    println("Found foo: ", qux["foo"])
else
    println("Did not find foo")
end

# Using a switch-like statement
bar == 123 ? println("Bar is 123") : println("Bar is not 123")

# Using a loop
for i in 1:5
    println(i)
end

# Using a function
function double(x)
    return 2 * x
end

println("Double of Bar: ", double(bar))
