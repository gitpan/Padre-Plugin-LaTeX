package Padre::Document::BibTeX;
BEGIN {
  $Padre::Document::BibTeX::VERSION = '0.08';
}

# ABSTRACT: BibTeX support document for Padre

use 5.008;
use strict;
use warnings;
use Carp            ();
use Padre::Document ();

our @ISA = 'Padre::Document';

sub task_functions {
	return '';
}

sub task_outline {
	return '';
}

sub task_syntax {
	return '';
}

sub comment_lines_str { return '%' }

1;

__END__
=pod

=head1 NAME

Padre::Document::BibTeX - BibTeX support document for Padre

=head1 VERSION

version 0.08

=head1 AUTHORS

=over 4

=item *

Zeno Gantner <zenog@cpan.org>

=item *

Ahmad M. Zawawi <ahmad.zawawi@gmail.com>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Zeno Gantner, Ahmad M. Zawawi.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

