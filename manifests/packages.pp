# Packages for xdebug.
#
class xdebug::packages {

  if ! defined(Package['php5-xdebug']) {
    package { 'php5-xdebug':
      ensure  => 'latest',
      require => Package['php5'],
    }
  }

}
