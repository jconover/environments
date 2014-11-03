class postgresql::config (
  $user,
  $group,
){
  file { '/etc/postgresql/9.1/main/postgresql.cnf':
    ensure  => present,
    source  => 'puppet:///modules/postgresql/postgresql.cnf',
    owner   => $user,
    group   => $group,
    require => Class['postgresql::package'],
    notify  => Class['postgresql::service'],
  }

  file { '/etc/postgresql/9.1/main':
    owner   => $user,
    group   => $group,
    recurse => true,
    require => File['/etc/postgresql/9.1/main/postgresql.cnf'],
  }
}

