class users::wheelmembers {
$wheelers = ['jc', 'alice']
   exec { "usermod -G 10 alice":
   path    => '/sbin/',
    }
    wheelers.foreach {|$x| notify "BSU wheeler $x" }
}
