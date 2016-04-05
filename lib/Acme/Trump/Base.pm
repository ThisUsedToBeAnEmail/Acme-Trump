#!/usr/bin/perl
package Acme::Trump::Base;
use Moose;

use Data::Dumper;
use namespace::autoclean;

has 'quotes_list' => (
    is  => 'rw',
    isa => 'HashRef',
    default => sub { { } },
);

has 'num_of_quotes' => (
    is  => 'ro',
    isa => 'Int',
    lazy => 1,
    default => sub {
        return scalar keys shift->quotes_list;
    }
);

sub quote {
    my ($self) = @_;

    my $max = $self->num_of_quotes;

    my $id = int(rand($max - 1)); 
    return $self->quotes_list->{$id};

}

1;
