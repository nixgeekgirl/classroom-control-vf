class users::wheelmembers {

  exec { "usermod -G 10 alice":
    path    => '/sbin/',
  }
}
