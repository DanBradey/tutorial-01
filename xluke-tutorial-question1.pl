# CPT223 - Perl Tutorial 1 - Question 1
# Luke Snelgar s3347534@student.rmit.edu.au

use strict;
use warnings;

#my @numbers = (1);   # invalid array size
my @numbers = (-3, 2.5, 9, 0.76, 11);  # valid array size
my $arraySize = @numbers;
my $count = 0;

if ($arraySize < 2)
{
	die "Error, not enough elements!\n";
}
else
{
	foreach my $num (sort @numbers)
	{
		print "Smallest number = $num\n" if ($count == 0);
		print "Largest number = $num\n" if ($count == $arraySize-1);
		$count++;
	}
}

exit;