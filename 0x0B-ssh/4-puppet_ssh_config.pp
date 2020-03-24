# change my SSH configuration file using Puppet 
exec { 'echo "PasswordAuthentication no\nIdentityFile ~/.ssh/holberton" >> /etc/ssh/ssh_config':
  path    => '/bin',
}
