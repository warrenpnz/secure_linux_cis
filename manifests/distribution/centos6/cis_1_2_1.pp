# @api private
#
class secure_linux_cis::distribution::centos6::cis_1_2_1 {
  include secure_linux_cis::rules::ensure_package_manager_repositories_are_configured
}
