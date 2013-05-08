use v5.10;
use strict;
use warnings FATAL => 'all';
use oop::class::document;


my $doc_ref = oop::class::document -> new (
       name => 'file1',
       owner => 'Nut'
    );

my $doc2 = oop::class::document -> new (
        name => 'untitle 2',
        owner => 'NUT'
    );
    
$doc2->content("this content in document 2");
say "length =". $doc2->length();
#$doc_ref->print();

