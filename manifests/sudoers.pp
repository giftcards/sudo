define sudo::sudoers (
  $ensure = present,
  $aliases,
  $operators,
  $entry,
) {

  if $ensure == absent {
    file { "/etc/sudoers.d/${name}": ensure => absent; }
  } else {
    file { "/etc/sudoers.d/${name}":
      ensure  => file,
      mode    => '0440',
      owner   => root,
      group   => root,
      content => template('sudo/sudoers'),
    }
  }
}
