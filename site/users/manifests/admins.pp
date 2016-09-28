class users::admins {
users::managed_user { 'joe': }
users::managed_user { 'alice':
group => 'staff',
}
users::managed_user { 'aaron':
group => 'staff',
}
users::managed_user { 'Jim':
gid => '10',
}
group { 'staff':
ensure => present,
}
gid { '10':
ensure => present,
}
}
