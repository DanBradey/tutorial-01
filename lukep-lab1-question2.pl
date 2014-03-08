##############################################################################
# Title: Lab 1 - Question 2											 		 #	
# Author: Luke Phelan														 #		
# Subject: Scripting Language Programming									 #	
# Description: a small script that finds the minimum and maximum values in   #
# an array. If there are less than two elements in the array, script ends.	 #
# Lab version with unless statement instead of if.    						 #
##############################################################################
#!/usr/bin/env perl
use warnings;
use strict;

my @numbers = (3,10, -2, 9.8, 23,893, 74, 12, 377);
my $size = @numbers;
my $min = $numbers[0]; 
my $max;

if($size < 2) {
    die "There are less than two elements in the array!!!\n";
}

## Foreach Loop
for my $number (@numbers) {
    unless($min < $number) {
        $min = $number;
    }

    unless($max > $number) {
        $max = $number;
    } 
}

print "Minimum number is: $min\n";
print "Maximum number is: $max\n";

exit;