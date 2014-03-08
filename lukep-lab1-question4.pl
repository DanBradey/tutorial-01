##############################################################################
# Title: Lab 1 - Question 4                                                  #  
# Author: Luke Phelan                                                        #  
# Subject: Scripting Language Programming                                    #  
# Description: user enters a date between 1-31 and prints out the            #
# corresponding day of the month that date falls on. First Monday of the     #
# the month is generated randomly.                                           #
# Modified from tute version to implement custom switch statement.           #
##############################################################################
#!/usr/bin/env perl
use warnings;
use strict;

my @days = (
    "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday",
    "Sunday"
    );
my $key_in;
my $day="";
my $rand_date = int(rand(6)+1);

#Debugging only
print $rand_date."\n";

#Accept user input and remove trailing new line
print "Please enter a date (1 - 31): ";
$key_in = <STDIN>;
chomp($key_in);

#takes the random number generated for the first Monday of the month and 
#subtracts it from the user input. This ensures when accessing the array of
#days that the correct one is found. If random date is more than the 
#user input, the date will be a negative, meaning the days array is accessed
#in reverse.
my $date = $key_in - $rand_date;



SWITCH: {
    #date not in valid range
    if($key_in > 31 || $key_in < 1) {
        die "Date selected is not possible. Exiting...\n";
        last SWITCH;
    }

    #split alogorithm into two to be more efficient. Entered amount either 
    #greater than random number or its less.
    if($key_in >= $rand_date) {
        #keep taking 7 away from the date until it falls under 7 where it
        #can be used to access the array
        while($date > 7) {
            $date -= 7;
        }
        $day = $days[$date];
        print "The date you entered is a $day\n";
        last SWITCH;
    }   
    else {
        $day = $days[$date];
        print "The date you entered is a $day\n";
        last SWITCH;
    }
}

if($key_in > 28 && $key_in < 32) {
    warn "Date might not be valid in current month...\n";
}

exit;