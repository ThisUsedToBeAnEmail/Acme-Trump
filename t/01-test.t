#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;
use Data::Dumper;

use_ok( 'Acme::Trump' );
use_ok( 'Acme::Trump::Base' );
use_ok( 'Acme::Trump::Motivational' );
use_ok( 'Acme::Trump::Outrageous' );

my $trump = Acme::Trump->new();

warn Dumper $trump->m;

done_testing;
1;
