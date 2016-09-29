define users::managed_user (
# $group = $title,
$group = '10',
) {
user { $title:
ensure => present,
}
file { "/home/${title}":
ensure => directory,
owner => $title,
group => $group,
}
}
