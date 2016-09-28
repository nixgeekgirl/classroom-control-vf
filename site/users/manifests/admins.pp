class users::admins {
users::managed_user { 'joe': }
users::managed_user { 'alice':
group => 'staff',
}
users::managed_user { 'aaron':
group => 'staff',
}
users { 'jc':
  ensure           => 'present',
}
user { 'matthew': 
  ensure           => 'present', 
#  gid             => ['wheel', 'memcached'], 
} 
group { 'staff':
ensure => present,
}
}
