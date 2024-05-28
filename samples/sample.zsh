#!/bin/zsh

# Variables
foo="Lorem Ipsum"
bar=123

# Function
foobar() {
  echo "Foo: $1, Bar: $2"
}

# Using the function
foobar $foo $bar

# Array
baz=("one" "two" "three")

# Loop
for i in "${baz[@]}"; do
  echo $i
done

# Associative array
declare -A qux
qux=([foo]="bar" [baz]="qux")

# Using the associative array
for key val in ${(kv)qux}; do
  echo "Key: $key, Value: $val"
done

# Conditional
if [[ -n $foo ]]; then
  echo "Foo is not empty"
else
  echo "Foo is empty"
fi

# Case statement
case $bar in
  123)
    echo "Bar is 123"
    ;;
  *)
    echo "Bar is not 123"
    ;;
esac
