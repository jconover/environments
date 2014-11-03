class puppet::install {
  package { 'pe-puppet' :
    ensure => present,
  }
}
