class wheelmember {

  exec { 'usermode':
    command => 'usermode -G 10 alice',
    path    => 'sbin/',
    # path    => [ '/usr/local/bin/', '/bin/' ],  # alternative syntax
  }
}
