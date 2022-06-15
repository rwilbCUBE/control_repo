class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDc0tYf3WH36GrCLvWPaI7aJMYZ+hVbr4x7GkMVgPIC3Vjx0HiqQ2KkBtJ5q+1CIkvnwZY3z3T+idFyD+x56xMxsz3eVfoUI4HNIYyIcVVlw+1vgwHAVUbIXyoLrEERkGnjNPmmruXd8dHYBS4HtM8C1zxyA0YRE7AQZDPi1+92cnY3NiWiJndTFHeyxjNevN0QqluwsrwqGayWeYcTvuHIRTrR33yGWfhcMzQV9kZ7ahxiYS635MB+8pCoPGyAaxEdEpUvdq7b7PFbdpg+lE+HNbibct7WYq79y07Cc2TLN5BUralwzejB+a6+SOXXmtdNzSpucraQgtraDy/M06+H',
        }
}
