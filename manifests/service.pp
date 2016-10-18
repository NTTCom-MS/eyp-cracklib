class cracklib::service inherits cracklib {

  #
  validate_bool($cracklib::manage_docker_service)
  validate_bool($cracklib::manage_service)
  validate_bool($cracklib::service_enable)

  validate_re($cracklib::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${cracklib::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $cracklib::manage_docker_service)
  {
    if($cracklib::manage_service)
    {
      #service or exec here
    }
  }
}
