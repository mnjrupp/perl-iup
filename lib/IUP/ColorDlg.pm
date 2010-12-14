#!/usr/bin/env perl

package IUP::ColorDlg;
use strict;
use warnings;
use base 'IUP::Internal::Element::Dialog';
use IUP::Internal::LibraryIup;

sub _create_element {
  #my ($self, $args, $firstonly) = @_;
  return IUP::Internal::LibraryIup::_IupColorDlg();
}

1;
