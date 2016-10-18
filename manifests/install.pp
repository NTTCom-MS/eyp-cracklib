# == Class: cracklib
#
# === cracklib::install documentation
#
class cracklib::install inherits cracklib {

  if($cracklib::manage_package)
  {
    if($cracklib::params::package_name!=undef)
    {
      package { $cracklib::params::package_name:
       ensure => $cracklib::package_ensure,
      }
    }
  }
}
