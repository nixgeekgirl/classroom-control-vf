class users::wheelmembers {
$wheelers = ["jc", "alice"]
#    exec { "usermod -G 10 alice":
#    path    => '/sbin/',
$wheelers.each | String $wheeler {
    exec { "usermod -G 10 ${wheeler}":
    path    => '/sbin/',
    }
  }
}
