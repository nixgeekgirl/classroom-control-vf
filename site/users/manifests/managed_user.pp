define users::managed_user (
$group = $title,
#$group = '10',
$wheelmember = '10',
) {
user { $title:
gid => $wheelmember,
ensure => present,
}
file { "/home/${title}":
ensure => directory,
owner => $title,
group => $group,
}
}
