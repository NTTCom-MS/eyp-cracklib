# == Class: cracklib
#
# === cracklib::install documentation
#
class cracklib::install inherits cracklib {

  if($cracklib::manage_package)
  {
    # package here, for example: 
    #package { $cracklib::params::package_name:
    #  ensure => $cracklib::package_ensure,
    #}
  }

}
