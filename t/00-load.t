#!perl

use strict;
use warnings;

use Test::More;

BEGIN {
	if( not $ENV{DISPLAY} and not $^O eq 'MSWin32' ) {
		plan skip_all => 'Needs DISPLAY';
		exit 0;
	}
}


plan tests => 1;

use_ok('Padre::Plugin::LaTeX');
diag("Testing Padre::Plugin::LaTeX $Padre::Plugin::LaTeX::VERSION, Perl $], $^X");