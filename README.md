# ifupdown

A Puppet module to manage Debian's ifupdown scripts. Right now functionality is 
limited to adding scripts that are triggered on interface state changes.

# Module usage

* [Class: ifupdown](manifests/init.pp)
* [Define: ifupdown::script](manifests/script.pp)

# Dependencies

See [metadata.json](metadata.json).

# Operating system support

This module has been tested on Debian 8. Adding support for any distribution 
that uses ifupdown should be trivial.
