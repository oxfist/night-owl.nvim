#!/usr/bin/env fish

# Variables
set foo "Lorem Ipsum"
set bar 123

# Function
function foobar
  echo "Foo: $argv[1], Bar: $argv[2]"
end

# Using the function
foobar $foo $bar

# Array
set baz one two three

# Loop
for i in $baz
  echo $i
end

# Associative array (emulated with two arrays)
set qux_keys foo baz
set qux_values bar qux

# Using the associative array
for i in (seq (count $qux_keys))
  echo "Key: "$qux_keys[$i]", Value: "$qux_values[$i]
end

# Conditional
if test -n $foo
  echo "Foo is not empty"
else
  echo "Foo is empty"
end

# Switch statement
switch $bar
  case 123
    echo "Bar is 123"
  case '*'
    echo "Bar is not 123"
end
