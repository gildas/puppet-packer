# == Class: packer
#
# Install Packer as a Puppet package provider
#
# === Parameters
#
# Document parameters here.
#
# [*user*]
#   Tells which user will own the Homebrew installation.
#   It is highly encouraged to choose a user different than the default.
#   Default: root
#
# [*group*]
#   Tells which group will own the Homebrew installation.
#   You should add users to this group later on if you want them to be allowed to install brews.
#   Defaults: brew
#
# === Examples
#
#  include packer
#
#  To install for a given user:
#
#  class { 'packer':
#    user  => gildas,
#    group => users,
#  }
#
# === Authors
#
# Author Name <gildas@breizh.org>
#
# === Copyright
#
# Copyright 2014, Gildas CHERRUEL.
#
class packer (
  $box_home = '/var/lib/packer',
  $owner    = root,
  $group    = brew,
)
{
  class {"packer::${::kernel}": }
}
