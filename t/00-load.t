#!perl

use strict;
use warnings;

use Test::NeedsDisplay ':skip_all';
use Test::More;

plan tests => 1;

use_ok('Padre::Plugin::LaTeX');
diag("Testing Padre::Plugin::LaTeX $Padre::Plugin::LaTeX::VERSION, Perl $], $^X");
