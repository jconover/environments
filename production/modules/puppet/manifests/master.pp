class puppet::master {

  include puppet
  include puppet::params

  package { 'pe-puppet':
    ensure => installed,
  }

  service { 'pe-puppet':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => File['/etc/puppetlabs/puppet/puppet.conf'],
  }
}
