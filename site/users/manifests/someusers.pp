class users::someusers {
$users = [ "user1", "user2" ]
 
define print_users {
        $user = $name
        notify { "Found user $user":; }
}
 
print_users { $users:; }
}
