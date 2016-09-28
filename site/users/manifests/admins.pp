class users::admins {
users::managed_user { 'joe': }
users::managed_user { 'alice':
group => 'staff',
}
users::managed_user { 'aaron':
group => 'staff',
}
users::managed_user { 'jc':
group => 'admin',
gid => '10',
}
users::managed_user { 'matthew': 
group => 'staff', 
#  gid             => ['wheel', 'memcached'], 
} 
group { 'staff':
ensure => present,
}
group { 'admin':
ensure => present,
}
}
