class puppet::install {
  include puppet::params

  package { 'pe-puppet' :
    ensure => present,
  }
}
