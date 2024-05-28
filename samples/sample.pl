#!/usr/bin/perl
# Perl script: foobar.pl

use strict;
use warnings;

# Defining variables
my $foo = "Lorem Ipsum";
my $bar = 123;

# Displaying variables
print "Foo: $foo\n";
print "Bar: $bar\n";

# Using an array
my @baz = (1, 2, 3, 4, 5);
print "@baz\n";

# Using a hash
my %qux = ("foo" => "bar", "baz" => "qux");
while (my ($key, $value) = each %qux) {
    print "Key: $key, Value: $value\n";
}

# Using control structures
if (exists $qux{"foo"}) {
    print "Found foo: $qux{'foo'}\n";
} else {
    print "Did not find foo\n";
}

# Using a switch-like statement
if ($bar == 123) {
    print "Bar is 123\n";
} else {
    print "Bar is not 123\n";
}

# Using a loop
foreach my $i (@baz) {
    print "$i\n";
}

# Using a subroutine
sub double {
    my ($x) = @_;
    return 2 * $x;
}

print "Double of Bar: ", double($bar), "\n";
