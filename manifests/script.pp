#
# == Define: ifupdown::script
#
# Add a script to a certain phase of interface setup
#
# == Parameters
#
# [*title*]
#   The resource title is used as a part of the filename on Puppet fileserver. 
#   The full filename will be of format "ifupdown-${title}".
# [*phase*]
#   The phase in which the script is run. Valid values are 'down', 'post-down',
#   'pre-up' and 'up'.
# [*ensure*]
#   State of this script. Either 'present' (default) or 'absent'.

define ifupdown::script
(
    Enum['down','post-down','pre-up','up'] $phase,
    Enum['present','absent']               $ensure = 'present'
)
{
    file { "ifupdown-${title}":
        ensure  => $ensure,
        name    => "/etc/network/if-${phase}.d/${title}",
        source  => "puppet:///files/ifupdown-${title}",
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
        require => Class['ifupdown::install'],
    }
}
