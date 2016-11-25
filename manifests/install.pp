#
# == Class ifupdown::install
#
class ifupdown::install {

    package { 'ifupdown':
        ensure => 'present',
    }
}
