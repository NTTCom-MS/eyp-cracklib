class cracklib::params {



  case $::osfamily
  {
    'redhat':
    {
      case $::operatingsystemrelease
      {
        /^[56].*$/:
        {
          $package_name = undef
          $pwqualityconf = undef
          $pamcracklib = true
        }
        /^[7].*$/:
        {
          $package_name = 'libpwquality'
          $pwqualityconf = '/etc/security/pwquality.conf'
          $pamcracklib = false
        }
        default: { fail("Unsupported RHEL/CentOS version! - ${::operatingsystemrelease}")  }
      }
    }
    'Debian':
    {
      case $::operatingsystem
      {
        'Ubuntu':
        {
          case $::operatingsystemrelease
          {
            /^14.*$/:
            {
            }
            default: { fail("Unsupported Ubuntu version! - ${::operatingsystemrelease}")  }
          }
        }
        'Debian': { fail('Unsupported')  }
        default: { fail('Unsupported Debian flavour!')  }
      }
    }
    default: { fail('Unsupported OS!')  }
  }
}
