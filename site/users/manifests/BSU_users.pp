$BSU_users = [ "user1", "user2" ]
 
define print_BSU_users {
        $user = $name
        notify { "Found user $user":; }
}
 
print_BSU_users { $BSU_users:; }
