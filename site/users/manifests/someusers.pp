class users::someusers {
# $users = [ "user1", "user2" ]
 
# define print_users {
#        $user = $name
#        notify { "Found user $user":; }
#}
 
# print_users { $users:; }
# filter out all the integers less than zero
#$array_in = [-4,3,-8,-2,1,4,-2,1,5,-1,-7,9,-3,2,6,-8,5,3,5,-6,8,9,7,-5,9,3,-3]
#$array_out = split(inline_template('<%= array_in.delete_if {|x| x < 0 }.join(",") %>'), ',')
#notice($array_out)
$files = [
  '/etc/puppet/puppet.conf',
  '/etc/puppet/auth.conf',
  '/etc/puppet/routes.yaml',
]

puppet::file { $files: }
}
