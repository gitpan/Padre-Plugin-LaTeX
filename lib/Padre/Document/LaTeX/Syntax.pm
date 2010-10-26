package Padre::Document::LaTeX::Syntax;
BEGIN {
  $Padre::Document::LaTeX::Syntax::VERSION = '0.03';
}

# ABSTRACT: Latex document syntax-checking in the background

use strict;
use warnings;

our @ISA = 'Padre::Task::Syntax';

use Padre::Wx;


sub syntax {
	my $self = shift;
	my $text = shift;

	my $filename = $self->{filename};

	# TODO check for pdflatex
	my $pdflatex_command = "pdflatex -file-line-error -draftmode -interaction nonstopmode $filename";
	my $output           = `$pdflatex_command`;

	## 	./camra-uhi.tex:292: Paragraph ended before \begin was complete.
	my @issues = ();

	# push @issues, { msg => $2, line => $1, severity => Padre::Wx::MarkError, desc => '' };

	LINE:
	foreach my $line ( split /\n/, $output ) {
		next LINE if not $line =~ /.*:(\d+):\s*(.*)/;

		warn "line: $line\n";

		my %issue = (
			msg      => $2,
			line     => $1,
			severity => Padre::Wx::MarkError,
			desc     => '',
		);

		push @issues, \%issue;
	}

	return \@issues;
}

1;



=pod

=head1 NAME

Padre::Document::LaTeX::Syntax - Latex document syntax-checking in the background

=head1 VERSION

version 0.03

=head1 SYNOPSIS

  # by default, the text of the current document
  # will be fetched
  my $task = Padre::Document::LaTeX::Syntax->new();
  $task->schedule;

  my $task2 = Padre::Document::LaTeX::Syntax->new(
    text          => Padre::Documents->current->text_get,
    filename      => Padre::Documents->current->editor->{Document}->filename,
  );
  $task2->schedule;

=head1 DESCRIPTION

This class implements syntax checking of LaTeX documents in
the background. It inherits from L<Padre::Task::Syntax>.
Please read its documentation!

=head1 SEE ALSO

This class inherits from L<Padre::Task::Syntax> which
in turn is a L<Padre::Task> and its instances can be scheduled
using L<Padre::TaskManager>.

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


__END__

