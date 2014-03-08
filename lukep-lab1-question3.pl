##############################################################################
# Title: Lab 1 - Question 3 										 		 #	
# Author: Luke Phelan														 #		
# Subject: Scripting Language Programming									 #	
# Description: a small script that finds the minimum and maximum values in   #
# an array. If there are less than two elements in the array, script ends.	 #
# Lab version with strings instead of numbers								 #
##############################################################################
#!/usr/bin/env perl
use warnings;
use strict;

my @numbers = ("something", "random", "strings", "perl");
my $size = @numbers;
my $min = $numbers[0]; 
my $max = $min;

if($size < 2) {
    die "There are less than two elements in the array!!!\n";
}

## Foreach Loop
for my $number (@numbers) {
    if($min > $number) {
        $min = $number;
    }

    if($max < $number) {
        $max = $number;
    } 
}

## While loop
my $count = 0;
while($count != $size) {
    if($min > $numbers[$count]) {
        $min = $numbers[$count];
    }

    if($max < $numbers[$count]) {
        $max = $numbers[$count];
    }
    $count++;
} 

print "Minimum number is: $min\n";
print "Maximum number is: $max\n";

## The above method does not work for finding the minimum and maximum values 
## for a string array. The '<' '>' operators don't work for evaluating
## strings in perl. The below solutions would work better.

## Sort method

my @sorted = sort @numbers; # by default smallest to largest

print "Smallest: $sorted[0]\n";
print "Largest: $sorted[-1]\n";

## Iterative Solution

for my $string (@numbers) {
    if(($min cmp $string) > 0) {
        $min = $string;
    }

    if(($max cmp $string) < 0) {
        $max = $string;
    } 
}

print "Smallest: $sorted[0]\n";
print "Largest: $sorted[-1]\n";

exit;