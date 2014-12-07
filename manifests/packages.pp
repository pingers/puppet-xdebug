# Packages for xdebug.
#
class xdebug::packages {

  package { 'php5-xdebug':
    ensure   => 'latest',
  }

}
