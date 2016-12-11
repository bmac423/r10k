class { 'motd':
  content => "This is your ${settings::environment} node.\n"
}

class { 'ssh': 
  require => Class['motd']
}