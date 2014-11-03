class postgresql::package (
  $user,
  $group,
){
  $postgresql_pkgs =  ['postgresql-9.1',
            'postgresql-client-9.1',
            'libpq5' ]

  package { $postgresql_pkgs:
    ensure  => present,
    require => User[$user]
  }

  user { $user:
    ensure  => present,
    comment => 'PostgreSQL user',
    gid     => $group,
    shell   => '/bin/false',
    require => Group[$group],
  }

  group { $group:
    ensure => present,
  }
}

