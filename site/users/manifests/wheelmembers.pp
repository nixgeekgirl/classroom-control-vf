class users::wheelmembers {
$wheelers = "['jc', 'alice']"
  #exec { "usermod -G 10 alice":
  exec { "usermod -G 10 ${wheelers}":
    path    => '/sbin/',
  }
}
