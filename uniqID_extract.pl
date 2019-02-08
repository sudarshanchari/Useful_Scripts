#!/usr/bin/perl
use strict;
use warnings;

# Usage: perl infile1 infile2 outfile

# You want to extract some information from one file based on some unique ID in an other file (for example gene information based on specific SNP Ids)
# Create a key of all the unique Ids and then use it to look through larger/main data and then print out those lines
# Versatile enough to filter, provide count and add conditionals

#Specifying input and output files from the commandline
my $infile = shift; # the main input file
my $infile2 = shift; # input (any) Unique ID file
my $outfile = shift;

#Providing file handles for the input and output files
open (IN, '<', $infile) or die "Can't open file $infile $!\n";
open (IN2, '<', $infile2) or die "Can't open file $infile2 $!\n";
open (OUT, '>', $outfile) or die "Can't write file $outfile $!\n";


my $keyref;
while (my $line= <IN2>) {
	chomp $line;
	$keyref->{$line} = 1;
}

while (my $line= <IN>) {
	chomp $line;
   	my @array = split ",", $line;
   	my $key1= $array[0]; 	    
    if (defined $keyref->{$key1}) { 	
			print OUT "$line\n";	
	  	}
	
}


	
