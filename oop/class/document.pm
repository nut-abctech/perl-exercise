package oop::class::document;
{
	use v5.10;
	use Moose;
	use strict;
	use warnings FATAL => 'all';
    
    has 'content' => (
        is => 'rw',
        isa => 'Str',
        default => 'empty',
    );
    
    has 'name' => (
        is => 'ro',
        isa => 'Str'
    );
    
    has 'owner' => (
        is => 'ro',
        isa => 'Str'
    );
    
    has 'readonly' => (
        is => 'rw',
        isa => 'Bool', 
        init_arg => 0,
    );
    
    sub length {
        my ($self) = @_;
        return length($self->content());
    };
    
    sub print {
        my ($self) = @_;
        say "::document name = ". $self->name();
        say "::document owner = ". $self->owner();
        say "::document readonly " if $self->readonly();
        say "::document writable " unless $self->readonly();
        say "::content:: \n". $self->content();
    };
    
    sub empty {
        my ($self) = @_;
        $self->content('empty'); 
    };
    
    sub compare {
       my ($self, $other_doc) = @_;
       return
    }
}

1;