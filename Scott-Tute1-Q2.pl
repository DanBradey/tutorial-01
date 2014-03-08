#!/usr/bin/env perl

#Tutorial 1 Question 1
#Scott Boyle s3335802

use warnings;
use strict;

my @days = ("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday");
my $weekDay;
my $firstMonday = int(rand(7) + 1);
print "$firstMonday\n";
print "What date would you like to know the day for? ";
my $userDay = <STDIN>;
chomp ($userDay);
die ("ERROR: The number you have entered is outside the bounds of any known month!\n") 
  if ($userDay < 1 || $userDay > 31);
warn "Date may be outside the bound of the current month!\n" if ($userDay > 28 && $userDay < 32);

if ($userDay <= $firstMonday)
{
  $weekDay = $days[0 - $userDay];
  print "Your day is $weekDay.\n";
}
  elsif (($userDay - $firstMonday) < 8)
  {
	$weekDay = $days[($userDay - $firstMonday) - 1];
	print "Your day is $weekDay.\n";
  }
	else
	{
	  $weekDay = $days[($userDay - $firstMonday) % 7];
	  print "Your day is $weekDay.\n";
	}