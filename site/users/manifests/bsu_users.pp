class users::bsu_users {
$wheelusers = [ "user1", "user2" ]
 
define print_bsu_users {
        $user = $name
        notify { "Found user $user":; }
}
 
print_bsu_users { $wheelusers: }
}
