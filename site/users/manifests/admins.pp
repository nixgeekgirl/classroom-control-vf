class users::admins {
users::managed_user { 'joe': }
users::managed_user { 'alice':
group => 'staff',
}
users::managed_user { 'aaron':
group => 'staff',
}
users::managed_user { 'jc':
gid => ['10'],
}
user { 'matthew': 
  ensure           => 'present', 
#  gid             => ['wheel', 'memcached'], 
} 
group { 'staff':
ensure => present,
}
}
