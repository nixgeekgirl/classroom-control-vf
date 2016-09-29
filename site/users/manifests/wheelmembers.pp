class users::wheelmembers {
#$wheelers = ["jc", "alice"]
$wheelers = ['jc', 'alice']
#    exec { "usermod -G 10 alice":
#    path    => '/sbin/',
# $wheelers.each | String $wheeler {
 user { $wheelers:
    ensure => present,
    # exec { "usermod -G 10 $wheeler":
    # path    => '/sbin/',
    comment => 'did it run?',
    }
}
