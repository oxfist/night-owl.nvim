<?php

// Class
class FooBar {
    public $foo;
    public $bar;

    public function __construct($foo, $bar) {
        $this->foo = $foo;
        $this->bar = $bar;
    }

    public function print() {
        echo "Foo: " . $this->foo . ", Bar: " . $this->bar . "\n";
    }
}

// Using the class
$foobar = new FooBar("Lorem Ipsum", 123);
$foobar->print();

// Array
$baz = array(1, 2, 3, 4, 5);
foreach ($baz as $i) {
    echo $i . "\n";
}

// Associative array
$qux = array("foo" => "bar", "baz" => "qux");
foreach ($qux as $key => $val) {
    echo "Key: " . $key . ", Value: " . $val . "\n";
}

// Conditional
if (array_key_exists("foo", $qux)) {
    echo "Found foo: " . $qux["foo"] . "\n";
} else {
    echo "Did not find foo\n";
}

// Switch statement
switch ($foobar->bar) {
    case 123:
        echo "Bar is 123\n";
        break;
    default:
        echo "Bar is not 123\n";
        break;
}
?>
