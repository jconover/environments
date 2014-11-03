class postgresql::service (
  $enable,
  $ensure,
){

  service { 'postgresql':
    ensure     => $ensure,
    hasstatus  => true,
    hasrestart => true,
    enable     => $enable,
    #require    => Class['postgresql::config'],
  }
} 
