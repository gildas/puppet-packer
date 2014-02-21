puppet-packer
=============

## Description

Packer package installer for PuppetLabs

=======

Overview
--------
The Packer module provides manifest classes to install [Packer][http://www.packer.io]. 


Setup
-----

Simply load the module via [Puppet Forge][https://forge.puppetlabs.com/gildas/packer]:

```sh
puppet module install gildas-packer
```

Usage
-----

## Installing Packer

To install [Packer][http://www.packer.io], include the main class in your node definiton:

```Puppet
include packer
```

By default, Packer will be installed as root/wheel on Mac OS/X and Linux.
To install on behalf of another user, use these parameters:

```Puppet
class {'packer':
  user  => gildas,
  group => users,
}
```

## Creating Packer templates

## Hiera configuration

## License

Copyright (c) 2014 Gildas CHERRUEL (Apache License, Version 2.0)
