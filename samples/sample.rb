# Importing modules
require 'json'

# Class
class FooBar
  attr_accessor :foo, :bar

  def initialize(foo = "Lorem Ipsum", bar = 123)
    @foo = foo
    @bar = bar
  end

  def print
    puts "Foo: #{@foo}, Bar: #{@bar}"
  end
end

# Usage of the class
foobar = FooBar.new
foobar.print

# Array
baz = [1, 2, 3, 4, 5]

# Iteration
baz.each do |i|
  puts i
end

# Hash
qux = { 'one' => 1, 'two' => 2 }

# Accessing hash
puts qux['one']

# Conditional
if qux['three']
  puts qux['three']
else
  puts "No three found"
end

# Function
def multiply(a, b)
  a * b
end

# Usage of the function
puts multiply(6, 7)

# Exception handling
begin
  # Parse invalid JSON
  JSON.parse('invalid json')
rescue JSON::ParserError => e
  puts "Caught exception: #{e}"
end
