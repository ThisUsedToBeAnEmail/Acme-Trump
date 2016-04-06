#!/usr/bin/perl
package Acme::Trump::Base;
use Moose;

use Data::Dumper;
use namespace::autoclean;

has 'quotes_list' => (
    traits => ['Array'],
    is  => 'rw',
    isa => 'ArrayRef[Str]',
    default => sub { [ ] },
    handles => {
	count_quotes_list => 'count',
	get_quotes_list => 'get',		   
    },
);

sub quote {
    my ($self) = @_;

    my $max = $self->count_quotes_list;

    my $id = int(rand($max - 1)); 
    return $self->get_quotes_list($id);
}

1;
