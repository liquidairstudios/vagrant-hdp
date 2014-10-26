# VM-Configuration of the ambari server. It functions as the name node and resource manager.

# Turn off interfering services
include interfering_services

# Install and enable ntp
include ntp

$hdp_rep='http://public-repo-1.hortonworks.com/ambari/centos6/1.x/updates/1.6.1/ambari.repo'

# Install ldap
include camptocamp-openldap
include ldap

# Ensure that servers can find themselves even in absence of dns
class { 'etchosts':
  ownhostname => 'one.node'
}

# Install and enable ambari server
class { 'ambari_server':
  repo => $hdp_repo
}

# Install and enable ambari agent
class { 'ambari_agent':
  ownhostname    => 'one.node',
  serverhostname => 'one.node',
  repo => $hdp_repo
}

# Establish ordering
Class['interfering_services'] -> Class['ntp'] -> Class['etchosts'] -> Class['ambari_server'] -> Class['ambari_agent']