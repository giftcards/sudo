class sudo::params {
  $sudopurge = true

  $admins_aliases = []
  $admins_sudoers_name = 'admins'
  $admins = []
  $admins_entry = 'ALL = (ALL) ALL'

  $operators_sudoers_name = 'operators'
  $operators_aliases = []
  $operators = []
  $operators_entry = 'ALL = (ALL) OPERATORS'

  $packages = [ 'sudo' ]
}
