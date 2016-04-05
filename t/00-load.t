#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Acme::Trump' ) || print "Bail out!\n";
}

diag( "Testing Acme::Trump $Acme::Trump::VERSION, Perl $], $^X" );
