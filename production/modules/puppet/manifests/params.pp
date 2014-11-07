class puppet::params {
  $puppetserver = 'master.example.com'
  $puppetservershort = "master"
  $puppetenvironment = 'production'
  #$puppetserver = hiera('puppetserver')
}

############################################################
#                   Hiera
#
# For the hiera example you will need to have a hiera file
#
# puppetserver = 'puppet.example.com'
#
############################################################

