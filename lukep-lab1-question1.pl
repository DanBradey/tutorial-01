##############################################################################
# Title: Lab 1 - Question 1											 		 #	
# Author: Luke Phelan														 #		
# Subject: Scripting Language Programming									 #	
# Description: a small script that finds the minimum and maximum values in   #
# an array. If there are less than two elements in the array, script ends.	 #
# Lab version with two different loop options								 #
##############################################################################
#!/usr/bin/env perl
use warnings;
use strict;

my @numbers = (3,10, -2, 9.8, 23,893, 74, 12, 377);
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


exit;