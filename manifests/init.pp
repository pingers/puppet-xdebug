# The main class for xdebug.
#
class xdebug (
  $extension        = $xdebug::params::extension,
  $ini_path         = $xdebug::params::ini_path,
  $ini_template     = $xdebug::params::ini_template,
) inherits xdebug::params {

  include xdebug::packages

  file { $ini_path:
    ensure  => 'present',
    content => template($ini_template),
    notify  => Service['httpd'],
    require => Package['libapache2-mod-php5'],
  }

}
