use strict;
use warnings;
package Mixin::Linewise::Readers 0.111;
# ABSTRACT: get linewise readers for strings and filenames

use 5.008001; # PerlIO
use Carp ();
use IO::File;
use PerlIO::utf8_strict;

use Sub::Exporter -setup => {
  exports => { map {; "read_$_" => \"_mk_read_$_" } qw(file string) },
  groups  => {
    default => [ qw(read_file read_string) ],
    readers => [ qw(read_file read_string) ],
  },
};

#pod =head1 SYNOPSIS
#pod
#pod   package Your::Pkg;
#pod   use Mixin::Linewise::Readers -readers;
#pod
#pod   sub read_handle {
#pod     my ($self, $handle) = @_;
#pod
#pod     LINE: while (my $line = $handle->getline) {
#pod       next LINE if $line =~ /^#/;
#pod
#pod       print "non-comment: $line";
#pod     }
#pod   }
#pod
#pod Then:
#pod
#pod   use Your::Pkg;
#pod
#pod   Your::Pkg->read_file($filename);
#pod
#pod   Your::Pkg->read_string($string);
#pod
#pod   Your::Pkg->read_handle($fh);
#pod
#pod =head1 EXPORTS
#pod
#pod C<read_file> and C<read_string> are exported by default.  Either can be
#pod requested individually, or renamed.  They are generated by
#pod L<Sub::Exporter|Sub::Exporter>, so consult its documentation for more
#pod information.
#pod
#pod Both can be generated with the option "method" which requests that a method
#pod other than "read_handle" is called with the created IO::Handle.
#pod
#pod If given a "binmode" option, any C<read_file> type functions will use
#pod that as an IO layer, otherwise, the default is C<utf8_strict>.
#pod
#pod   use Mixin::Linewise::Readers -readers => { binmode => "raw" };
#pod   use Mixin::Linewise::Readers -readers => { binmode => "encoding(iso-8859-1)" };
#pod
#pod =head2 read_file
#pod
#pod   Your::Pkg->read_file($filename);
#pod   Your::Pkg->read_file(\%options, $filename);
#pod
#pod If generated, the C<read_file> export attempts to open the named file for
#pod reading, and then calls C<read_handle> on the opened handle.
#pod
#pod An optional hash reference may be passed before C<$filename> with options.
#pod The only valid option currently is C<binmode>, which overrides any
#pod default set from C<use> or the built-in C<utf8_strict>.
#pod
#pod Any arguments after C<$filename> are passed along after to C<read_handle>.
#pod
#pod =cut

sub _mk_read_file {
  my ($self, $name, $arg) = @_;

  my $method = defined $arg->{method} ? $arg->{method} : 'read_handle';
  my $dflt_enc = defined $arg->{binmode} ? $arg->{binmode} : 'utf8_strict';

  sub {
    my ($invocant, $options, $filename);
    if ( ref $_[1] eq 'HASH' ) {
      # got options before filename
      ($invocant, $options, $filename) = splice @_, 0, 3;
    }
    else {
      ($invocant, $filename) = splice @_, 0, 2;
    }

    my $binmode = defined $options->{binmode} ? $options->{binmode} : $dflt_enc;
    $binmode =~ s/^://; # we add it later

    # Check the file
    Carp::croak "no filename specified"           unless $filename;
    Carp::croak "file '$filename' does not exist" unless -e $filename;
    Carp::croak "'$filename' is not readable"     unless -r _ && ! -d _;

    my $handle = IO::File->new($filename, "<:$binmode")
      or Carp::croak "couldn't read file '$filename': $!";

    $invocant->$method($handle, @_);
  }
}

#pod =head2 read_string
#pod
#pod   Your::Pkg->read_string($string);
#pod   Your::Pkg->read_string(\%option, $string);
#pod
#pod If generated, the C<read_string> creates a handle on the given string, and
#pod then calls C<read_handle> on the opened handle.  Because handles on strings
#pod must be octet-oriented, the string B<must contain octets>.  It will be opened
#pod in the default binmode established by importing.  (See L</EXPORTS>, above.)
#pod
#pod Any arguments after C<$string> are passed along after to C<read_handle>.
#pod
#pod Like C<read_file>, this method can take a leading hashref with one valid
#pod argument: C<binmode>.
#pod
#pod =cut

sub _mk_read_string {
  my ($self, $name, $arg) = @_;

  my $method = defined $arg->{method} ? $arg->{method} : 'read_handle';
  my $dflt_enc = defined $arg->{binmode} ? $arg->{binmode} : 'utf8_strict';

  sub {
    my ($opt) = @_ > 2 && ref $_[1] ? splice(@_, 1, 1) : undef;
    my ($invocant, $string) = splice @_, 0, 2;

    my $binmode = ($opt && $opt->{binmode}) ? $opt->{binmode} : $dflt_enc;
    $binmode =~ s/^://; # we add it later

    Carp::croak "no string provided" unless defined $string;

    open my $handle, "<:$binmode", \$string
      or die "error opening string for reading: $!";

    $invocant->$method($handle, @_);
  }
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Mixin::Linewise::Readers - get linewise readers for strings and filenames

=head1 VERSION

version 0.111

=head1 SYNOPSIS

  package Your::Pkg;
  use Mixin::Linewise::Readers -readers;

  sub read_handle {
    my ($self, $handle) = @_;

    LINE: while (my $line = $handle->getline) {
      next LINE if $line =~ /^#/;

      print "non-comment: $line";
    }
  }

Then:

  use Your::Pkg;

  Your::Pkg->read_file($filename);

  Your::Pkg->read_string($string);

  Your::Pkg->read_handle($fh);

=head1 PERL VERSION

This module should work on any version of perl still receiving updates from
the Perl 5 Porters.  This means it should work on any version of perl released
in the last two to three years.  (That is, if the most recently released
version is v5.40, then this module should work on both v5.40 and v5.38.)

Although it may work on older versions of perl, no guarantee is made that the
minimum required version will not be increased.  The version may be increased
for any reason, and there is no promise that patches will be accepted to lower
the minimum required perl.

=head1 EXPORTS

C<read_file> and C<read_string> are exported by default.  Either can be
requested individually, or renamed.  They are generated by
L<Sub::Exporter|Sub::Exporter>, so consult its documentation for more
information.

Both can be generated with the option "method" which requests that a method
other than "read_handle" is called with the created IO::Handle.

If given a "binmode" option, any C<read_file> type functions will use
that as an IO layer, otherwise, the default is C<utf8_strict>.

  use Mixin::Linewise::Readers -readers => { binmode => "raw" };
  use Mixin::Linewise::Readers -readers => { binmode => "encoding(iso-8859-1)" };

=head2 read_file

  Your::Pkg->read_file($filename);
  Your::Pkg->read_file(\%options, $filename);

If generated, the C<read_file> export attempts to open the named file for
reading, and then calls C<read_handle> on the opened handle.

An optional hash reference may be passed before C<$filename> with options.
The only valid option currently is C<binmode>, which overrides any
default set from C<use> or the built-in C<utf8_strict>.

Any arguments after C<$filename> are passed along after to C<read_handle>.

=head2 read_string

  Your::Pkg->read_string($string);
  Your::Pkg->read_string(\%option, $string);

If generated, the C<read_string> creates a handle on the given string, and
then calls C<read_handle> on the opened handle.  Because handles on strings
must be octet-oriented, the string B<must contain octets>.  It will be opened
in the default binmode established by importing.  (See L</EXPORTS>, above.)

Any arguments after C<$string> are passed along after to C<read_handle>.

Like C<read_file>, this method can take a leading hashref with one valid
argument: C<binmode>.

=head1 AUTHOR

Ricardo SIGNES <cpan@semiotic.systems>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2008 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
