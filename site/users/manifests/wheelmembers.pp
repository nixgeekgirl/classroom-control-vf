class users::wheelmembers {
$wheelers = ['jc', 'alice']
   # exec { "usermod -G 10 alice":
   # path    => '/sbin/',
   # }
    # wheelers.foreach { notify "BSU wheeler $x" }
    wheelers.foreach { |$x| notify { "Hi from BSU on Friday.  This is a $x .": }}
}
