class puppet::config {
  include  puppet::params
  $puppetserver = "master.example.com"
  $puppetenvironment = "production"

  file { '/etc/puppetlabs/puppet/puppet.conf':
    ensure  => present,
    content => template('puppet/puppet.conf.erb'),
    owner   => 'pe-puppet',
    group   => 'pe-puppet',
    require => Class['puppet::install'],
    notify  => Class['puppet::service'],
  }
}
