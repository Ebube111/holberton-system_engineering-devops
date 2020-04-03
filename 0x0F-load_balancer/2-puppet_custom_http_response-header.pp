#!/usr/bin/env bash
# creating a custom HTTP header response with Puppet

exec {'update':
  command  => 'sudo apt-get update',
  provider => shell,
  }

exec {'Install':
  command  => 'sudo apt-get -y install nginx',
  provider => shell,
  } 

exec {'Sed':
  command  => 'sudo sed -i "11i\\\tadd_header X-Served-By ${hostname};" /etc/nginx/nginx.conf',
  provider => shell,
  }
exec {'Restart':
  command  => 'sudo service nginx restart',
  provider => shell,
  } 
