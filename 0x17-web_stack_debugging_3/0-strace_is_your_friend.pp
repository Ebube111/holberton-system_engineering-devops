# Apache is returning a 500 error
# this code fix it
exec { 'fixing WP setting issues':
  command => "sed -i 's/phpp/php/g' /var/www/html/wp-settings.php",
  path    => ['/usr/bin', '/usr/sbin', '/bin']}
