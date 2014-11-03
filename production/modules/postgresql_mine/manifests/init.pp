class postgresql (
  $group           = 'postgres',
  $service_enable = true,
  $service_ensure = running,
  $user            = 'postgres'
){
  class { 'postgresql::package':
    user  => $user,
    group => $group,
  }
  #class { 'postgresql::config':
  #  user  => $user,
  #  group => $group,
  #}
  class { 'postgresql::service':
    ensure  => $service_running,
    enable => $service_enabled,
  }
}
