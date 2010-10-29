package Padre::Document::LaTeX;
BEGIN {
  $Padre::Document::LaTeX::VERSION = '0.07';
}

# ABSTRACT: Latex support document for Padre

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
	return 'Padre::Document::LaTeX::Syntax';
}

sub comment_lines_str { return '%' }

1;

__END__
=pod

=head1 NAME

Padre::Document::LaTeX - Latex support document for Padre

=head1 VERSION

version 0.07

=head1 AUTHORS

=over 4

=item *

Zeno Gantner <zenog@cpan.org>

=item *

Ahmad M. Zawawi <ahmad.zawawi@gmail.com>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Zeno Gantner.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

