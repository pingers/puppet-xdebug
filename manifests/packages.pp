# Packages for xdebug.
#
class xdebug::packages {

  package { 'xdebug':
    ensure   => 'latest',
    provider => 'pecl', 
  }

}
