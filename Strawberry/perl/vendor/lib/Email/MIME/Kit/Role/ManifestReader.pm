package Email::MIME::Kit::Role::ManifestReader 3.000008;
# ABSTRACT: things that read kit manifests

use v5.20.0;
use Moose::Role;
with 'Email::MIME::Kit::Role::Component';

#pod =head1 IMPLEMENTING
#pod
#pod This role also performs L<Email::MIME::Kit::Role::Component>.
#pod
#pod Classes implementing this role must provide a C<read_manifest> method, which is
#pod expected to locate and read a manifest for the kit.  Classes implementing this
#pod role should probably include L<Email::MIME::Kit::Role::ManifestDesugarer>, too.
#pod
#pod =cut

requires 'read_manifest';

no Moose::Role;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Email::MIME::Kit::Role::ManifestReader - things that read kit manifests

=head1 VERSION

version 3.000008

=head1 PERL VERSION

This library should run on perls released even a long time ago.  It should
work on any version of perl released in the last five years.

Although it may work on older versions of perl, no guarantee is made that the
minimum required version will not be increased.  The version may be increased
for any reason, and there is no promise that patches will be accepted to
lower the minimum required perl.

=head1 IMPLEMENTING

This role also performs L<Email::MIME::Kit::Role::Component>.

Classes implementing this role must provide a C<read_manifest> method, which is
expected to locate and read a manifest for the kit.  Classes implementing this
role should probably include L<Email::MIME::Kit::Role::ManifestDesugarer>, too.

=head1 AUTHOR

Ricardo Signes <cpan@semiotic.systems>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2023 by Ricardo Signes.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
