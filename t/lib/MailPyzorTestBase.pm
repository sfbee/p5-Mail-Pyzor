package MailPyzorTestBase;

# Copyright (c) 2012, cPanel, LLC.
# All rights reserved.
# http://cpanel.net
#
# This is free software; you can redistribute it and/or modify it under the
# same terms as Perl itself. See L<perlartistic>.

use strict;
use warnings;

use parent 'Test::Class';

use Test::More;

use Test::Mail::Pyzor ();

sub _skip_if_no_python_pyzor {
    my ($self, $num_tests) = @_;

    if (!Test::Mail::Pyzor::python_can_load_pyzor()) {
        my $bin = Test::Mail::Pyzor::python_bin();

        skip "“$bin” can’t load pyzor!", $num_tests;
    }

    return;
}

1;
