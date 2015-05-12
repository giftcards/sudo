class sudo::config {
  require(sudo::packages)

  file {'/etc/sudoers.d':
    ensure  => directory,
    owner   => root,
    group   => root,
    mode    => '0750',
    purge   => $sudo::sudopurge,
    recurse => $sudo::sudopurge,
  }

  if $sudo::admins != [] {
    sudo::sudoers { $sudo::admins_sudoers_name:
      ensure    => present,
      aliases   => $sudo::admins_aliases,
      operators => $sudo::admins,
      entry     => $sudo::admins_entry,
    }
  }

  if $sudo::operators != [] {
    sudo::sudoers { $sudo::operators_sudoers_name:
      ensure    => present,
      aliases   => $sudo::operators_aliases,
      operators => $sudo::operators,
      entry     => $sudo::operators_entry,
    }
  }
}
