package DDG::Spice::Bootic;
# ABSTRACT: Search for products on Bootic.

use DDG::Spice;

triggers any => 'bootic';

spice to => 'http://www.bootic.com/cgi-bin/api/search/products?output=json&callback={{callback}}&pretty_name=1&limit=5&smart=1&q=$1';

handle remainder => sub {
	return $_ if defined $_;
};

1;
