# == Class: cracklib
#
# === cracklib::config documentation
#
class cracklib::config inherits cracklib {

  if($cracklib::params::pwqualityconf!=undef)
  {
    file { $cracklib::params::pwqualityconf:
      ensure  => 'present',
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template("${module_name}/pwquality.erb"),
    }
  }
}
