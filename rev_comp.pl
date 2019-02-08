#!/usr/bin/perl
use strict;
use warnings;

# Usage: perl input_sequence 

# Written as a sub-routine but can be converted to a direct script as well
# Also can be scaled up to read multiple sequences from a file

my $orig_seq = shift;
my $rev_comp = reverse_complement ($orig_seq);
print "OrigSeq: $seq\n";
print "RevComp: $rev_comp\n";


######################

sub reverse_complement {
    my $seq = shift;
    $seq = reverse $seq; #reverse
    $seq =~ tr/ATGCatgc/TACGtacg/; #complement
    return $seq;
}
