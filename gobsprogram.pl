#!/usr/bin/perl
use strict;

system('clear');
my $gob;
do {
  print "Gob's Program: Y/N? ";
  $gob = <STDIN>;
  if ( $gob =~ /y/i ) {
    do { print "Penus "; }
    while 1
  }
} while ($gob !~ /n/i)
