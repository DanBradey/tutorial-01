#!/usr/bin/env perl

#Tutorial 1 Question 1
#Scott Boyle s3335802

use warnings;
use strict;


my @numbers = (-3, 2.5, 9, 0.76, ll);
my $small = @numbers[0];
my $large = @numbers[0];

Die ("The array contains too few entrys.\n") if (scalar(@numbers) < 2);

foreach my $item (@numbers)
  {
    $small = $item if ($item < $small);
	$large = $item if ($item > $large);
  }

print "The largest number is $large and the samllest is $small.\n";