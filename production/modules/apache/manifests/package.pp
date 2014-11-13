class apache::package {
  package { [ 'httpd' ]:
    ensure => present,
  }
}
