stage { 'pre': before => Stage['main'] }

class { 'baseconfig': stage => 'pre' }

File {
  ensure => file,
  owner  => 'root',
  group  => 'root',
  mode   => '0644'
}

include apache
include php
