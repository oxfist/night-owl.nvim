#!/bin/bash

# Variables
FOO="Lorem Ipsum"
BAR=123
echo "FOO is: $FOO"
echo "BAR is: $BAR"

# Arrays
BAZ=("foo" "bar" "baz")
echo "The second element in BAZ is: ${BAZ[1]}"

# Loop
for ITEM in "${BAZ[@]}"; do
  echo "This is a $ITEM."
done

# Conditional
if [ "$FOO" == "Lorem Ipsum" ]; then
  echo "FOO is Lorem Ipsum."
else
  echo "FOO is not Lorem Ipsum."
fi

# Function
function say_hello() {
  local NAME=$1
  echo "Hello, $NAME!"
}

say_hello "foobar"

# Reading from a file
while IFS= read -r LINE; do
  echo "Line: $LINE"
done <"file.txt"

# Using a command's output
FILES=$(ls)
echo "These are your files: $FILES"

# Arithmetic
((a = 5))
((b = 2))
((c = a + b))
echo "5 + 2 = $c"

# Case statement
case "$FOO" in
"Lorem Ipsum") echo "FOO is Lorem Ipsum." ;;
*) echo "FOO is not Lorem Ipsum." ;;
esac

# Here document
cat <<EOF
This is a here document.
It can span multiple lines.
EOF
