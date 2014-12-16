# The main class for xdebug.

class xdebug (
  $extension = $xdebug::params::extension,
  $ini       = $xdebug::params::ini,
) inherits xdebug::params {

  include xdebug::packages

  file { '/etc/php5/mods-available/xdebug.ini':
    ensure  => 'present',
    content => template($ini),
    notify  => Service['httpd'],
    require => [
      Package['php5-xdebug'],
      Package['libapache2-mod-php5'],
    ],
  }
  file { '/etc/php5/apache2/conf.d/20-xdebug.ini':
    ensure => 'link',
    target => '/etc/php5/mods-available/xhprof.ini',
  }

}
