#
# == Class: ifupdown
#
class ifupdown
(
    Hash $scripts = {}
)
{
    include ::ifupdown::install

    create_resources('ifupdown::script', $scripts)
}
