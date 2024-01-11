#!/usr/bin/perl

use Term::ANSIColor;
use Term::ANSIColor qw(:constants);

open MAKELOG, "make @ARGV 2>&1 |";

while (<MAKELOG>) {
   m/^(gcc|g\+\+|ar)/i and print BLUE, $_, RESET and next;
   m/^(mpicc|mpicxx)/i and print BLUE, $_, RESET and next;
   m/^(nvcc)/i and print BLUE, $_, RESET and next;
   m/error/i and print RED, $_, RESET and next;
   m/warning/i and print UNDERLINE MAGENTA, $_, RESET and next;
   m/make/i and print GREEN, $_, RESET and next;
   print;
}

close MAKELOG;
