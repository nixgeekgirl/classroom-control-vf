class users::admins {
users::managed_user { 'joe': }
users::managed_user { 'alice':
group => 'staff',
}
users::managed_user { 'aaron':
group => 'staff',
}
users::managed_user { 'matthew': 
group => 'staff', 
} 
group { 'staff':
ensure => present,
}
group { 'admin':
ensure => present,
}
}
