class sudo (

  $sudopurge = $sudo::params::sudopurge,

  $admins_aliases = $sudo::params::admins_aliases,
  $admins = $sudo::params::admins,
  $operators_sudoers_name = $sudo::params::operators_sudoers_name,
  $operators_aliases = $sudo::params::operators_aliases,
  $operators = $sudo::params::operators,
  $operators_entry = $sudo::params::operators_entry,

) inherits sudo::params {

  $packages = $sudo::params::packages
  $admins_sudoers_name = $sudo::params::admins_sudoers_name
  $admins_entry = $sudo::params::admins_entry

  include sudo::params
  include sudo::packages
  include sudo::config
  include sudo::services

}
