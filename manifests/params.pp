# Parameters for xdebug.
#
class xdebug::params (
  $extension        = '/usr/lib/php5/20121212/xdebug.so',
  $ini_path         = '/etc/php5/apache2/conf.d/20-xdebug.ini',
  $ini_template     = 'xdebug/xdebug.ini.erb',
) {
  # Nothing to see here.
}
