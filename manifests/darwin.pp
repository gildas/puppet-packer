class packer::darwin
{
  package {'homebrew/binary':
    ensure   => present,
    provider => tap,
    require  => Class['homebrew'],
  }

  package {'packer':
    ensure   => $ensure,
    provider => brew,
    require  => Package['homebrew/binary'],
  }
}
