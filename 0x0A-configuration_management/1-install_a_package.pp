# Install python3-pip
package { 'python3-pip':
  ensure => installed,
}

# Install Flask 2.1.0 using pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => ['/usr/bin'],
  unless  => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
  require => Package['python3-pip'],
}

# Install Werkzeug 2.1.1 using pip3
exec { 'install_werkzeug':
  command => '/usr/bin/pip3 install Werkzeug==2.1.1',
  path    => ['/usr/bin'],
  unless  => '/usr/bin/pip3 show Werkzeug | grep -q "Version: 2.1.1"',
  require => Package['python3-pip'],
}
