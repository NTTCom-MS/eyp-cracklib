# == Class: cracklib
#
# === cracklib documentation
#
class cracklib(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                          ) inherits cracklib::params{

  class { '::cracklib::install': } ->
  class { '::cracklib::config': } ~>
  class { '::cracklib::service': } ->
  Class['::cracklib']

}
