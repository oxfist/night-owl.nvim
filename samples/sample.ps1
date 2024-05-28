# PowerShell script: foobar.ps1

# Defining variables
$foo = "Lorem Ipsum"
$bar = 123

# Displaying variables
Write-Host "Foo: $foo"
Write-Host "Bar: $bar"

# Using an array
$baz = 1, 2, 3, 4, 5
$baz

# Using a hashtable
$qux = @{
    "foo" = "bar"
    "baz" = "qux"
}
$qux

# Using control structures
if ($qux.ContainsKey("foo")) {
    Write-Host "Found foo: $($qux["foo"])"
} else {
    Write-Host "Did not find foo"
}

# Using a switch statement
switch ($bar) {
    123 { Write-Host "Bar is 123" }
    default { Write-Host "Bar is not 123" }
}

# Using a loop
foreach ($i in $baz) {
    Write-Host $i
}

# Using a function
function Double {
    param($x)
    return 2 * $x
}

Write-Host "Double of Bar: $(Double $bar)"
