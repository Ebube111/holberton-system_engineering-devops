# testing how well our web server setup featuring Nginx is doing
#under pressure and it turns out its not doing well: we are
#getting a huge amount of failed requests
exec { 'update_ulimit':
	  command => 'sed -i \'s/15/15000/\' /etc/default/nginx && service nginx restart',
	  path    => ['/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ] }
