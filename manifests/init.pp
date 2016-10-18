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
                $minlen                = '14',
                $dcredit               = '-1',
                $ucredit               = '-1',
                $ocredit               = '-1',
                $lcredit               = '-1',
              ) inherits cracklib::params{

  class { '::cracklib::install': } ->
  class { '::cracklib::config': } ->
  Class['::cracklib']

}
