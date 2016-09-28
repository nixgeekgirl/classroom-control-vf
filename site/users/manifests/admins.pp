class users::admins {
users::managed_user { 'joe': }
users::managed_user { 'alice':
group => 'staff',
}
users::managed_user { 'aaron':
group => 'staff',
}
users::managed_user { 'Jim':
gid => 'wheel',
}
group { 'staff':
ensure => present,
}
gid { 'wheel':
ensure => present,
}
}
