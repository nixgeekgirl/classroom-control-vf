define users::managed_user (
$group = $title,
$gid = '10',
) {
user { $title:
ensure => present,
}
file { "/home/${title}":
ensure => directory,
owner => $title,
group => $group,
gid   => $gid,
}
}
