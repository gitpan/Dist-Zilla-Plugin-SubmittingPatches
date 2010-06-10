#!perl
#
# This file is part of Dist-Zilla-Plugin-SubmittingPatches
#
# This software is Copyright (c) 2010 by Caleb Cushing <xenoterracide@gmail.com>.
#
# This is free software, licensed under:
#
#   The Artistic License 2.0
#
use strict;
use warnings;


BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}


use Test::More;

eval "use Test::DistManifest";
plan skip_all => "Test::DistManifest required for testing the manifest"
  if $@;
manifest_ok();
