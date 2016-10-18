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

  if($cracklib::params::pamcracklib)
  {
    file { '/tmp/exec_pam_cracklib':
      ensure => 'present',
      content => template("${module_name}/exec_sedpamcracklib.erb"),
    }
  }
  #password    requisite     pam_cracklib.so try_first_pass retry=3 type=
  #password required pam_cracklib.so try_first_pass retry=3 minlen=14,dcredit=-1,ucredit=-1,ocredit=-1 lcredit=-1
}
