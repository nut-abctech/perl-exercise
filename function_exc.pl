
use v5.10;
use strict;
use Moose;

#String invert func
sub reverse_string {
	#receive arg
	my ($arg) = @_;
	say 'string given length : '. length($arg);
	return reverse($arg);
};

#pass array into func
sub echo_array {
	say "element, $_!" for @_;
};

#pass hash map into func
sub print_hash {
	my ($country, %arg_hash) = @_;
	while (my ($name,  $type) = each %arg_hash)
	{
		next unless $type eq $country;
		say "$name is in $type";
	}
};



my $param = 'Hello how r u doing ?';
say '#####sub module in perl excercise';
say '########first function is inverst string';

my $result = reverse_string($param, 'test');

say 'result :'. $result;


say "function echo value in array";
my @my_array = ('one','two','three','four','five');
echo_array(@my_array);


my %city_hash = (
	Bangkok => 'Thailand',
	London => 'UK',
	Southampton => 'UK',
	Baht => 'UK',
	Oxford => 'UK',
);

#print_hash( %city_hash );
#print cith in UK 
print_hash( 'UK', %city_hash);
#test;