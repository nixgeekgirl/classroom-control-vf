class users::admins {
users::managed_user { 'joe': }
users::managed_user { 'alice':
group => 'staff',
}
users::managed_user { 'aaron':
group => 'staff',
}
users::managed_user { 'jc':
groups => 'wheel',
}
group { 'staff':
ensure => present,
}
groups { 'wheel':
ensure => present,
}
}
