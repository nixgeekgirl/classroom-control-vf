class wheelmembers {

  exec { 'usermod':
    command => 'usermod -G 10 alice',
    path    => 'sbin/',
    # path    => [ '/usr/local/bin/', '/bin/' ],  # alternative syntax
  }
}
