class nginx {
package { 'nginx':
ensure => present,
}f
ile { '/var/www':
ensure => directory,
owner => 'root',
group => 'root',
mode => '0775',
}f
ile { '/var/www/index.html':
ensure => file,
owner => 'root',
group => 'root',
mode => '0664',
source => 'puppet:///modules/nginx/index.html',
}f
ile { '/etc/nginx/nginx.conf':
ensure => file,
owner => 'root',
group => 'root',
mode => '0664',
source => 'puppet:///modules/nginx/nginx.conf',
require => Package['nginx'],
notify => Service['nginx'],
}f
ile { '/etc/nginx/conf.d':
ensure => directory,
owner => 'root',
group => 'root',
mode => '0775',
}f
ile { '/etc/nginx/conf.d/default.conf':
ensure => file,
owner => 'root',
group => 'root',
mode => '0664',
source => 'puppet:///modules/nginx/default.conf',
require => Package['nginx'],
notify => Service['nginx'],
}s
ervice { 'nginx':
ensure => running,
enable => true,
}
}
