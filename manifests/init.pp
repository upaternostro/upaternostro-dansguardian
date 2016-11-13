# == Class: dansguardian
#
# Full description of class dansguardian here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'dansguardian':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class dansguardian(
  $naughtyness_limit            = $dansguardian::params::naughtyness_limit,
  $banned_extensions            = $dansguardian::params::banned_extensions,
  $banned_mimetypes             = $dansguardian::params::banned_mimetypes,
  $bannedsite_includes          = $dansguardian::params::bannedsite_includes,
  $bannedsite_time              = $dansguardian::params::bannedsite_time,
  $bannedsite_category          = $dansguardian::params::bannedsite_category,
  $bannedsite_other             = $dansguardian::params::bannedsite_other,
  $bannedsite_blanketblock      = $dansguardian::params::bannedsite_blanketblock,
  $bannedsite_blanketSSLblock   = $dansguardian::params::bannedsite_blanketSSLblock,
  $bannedsite_blanketIPblock    = $dansguardian::params::bannedsite_blanketIPblock,
  $bannedsite_blanketIPSSLblock = $dansguardian::params::bannedsite_blanketIPSSLblock,
  $bannedsite_lists             = $dansguardian::params::bannedsite_lists,
  $phraselist                   = $dansguardian::params::phraselist,
  $urlregexplist                = $dansguardian::params::urlregexplist,
  $headerregexplist             = $dansguardian::params::headerregexplist,
  $exceptionregexpurllist       = $dansguardian::params::exceptionregexpurllist,
  $contentregexplist            = $dansguardian::params::contentregexplist,
  $language                     = $dansguardian::params::language,
  $dgcfgdir                     = $dansguardian::params::dgcfgdir,
  $dguser                       = $dansguardian::params::dguser,
  $dggroup                      = $dansguardian::params::dggroup,
  $dgmode                       = $dansguardian::params::dgmode,
  $package_ensure               = $dansguardian::params::package_ensure,
  $package_name                 = $dansguardian::params::package_name,
  $service_ensure               = $dansguardian::params::service_ensure,
  $service_manage               = $dansguardian::params::service_manage,
  $service_enable               = $dansguardian::params::service_enable,
) inherits dansguardian::params {
  class { '::dansguardian::install':
    package_ensure => $package_ensure,
    package_name   => $package_name,
  } ->
  class { '::dansguardian::config':
    naughtyness_limit            => $naughtyness_limit,
    banned_extensions            => $banned_extensions,
    banned_mimetypes             => $banned_mimetypes,
    bannedsite_includes          => $bannedsite_includes,
    bannedsite_time              => $bannedsite_time,
    bannedsite_category          => $bannedsite_category,
    bannedsite_other             => $bannedsite_other,
    bannedsite_blanketblock      => $bannedsite_blanketblock,
    bannedsite_blanketSSLblock   => $bannedsite_blanketSSLblock,
    bannedsite_blanketIPblock    => $bannedsite_blanketIPblock,
    bannedsite_blanketIPSSLblock => $bannedsite_blanketIPSSLblock,
    bannedsite_lists             => $bannedsite_lists,
    phraselist                   => $phraselist,
    urlregexplist                => $urlregexplist,
    headerregexplist             => $headerregexplist,
    exceptionregexpurllist       => $exceptionregexpurllist,
    contentregexplist            => $contentregexplist,
    language                     => $language,
    dgcfgdir                     => $dgcfgdir,
    dguser                       => $dguser,
    dggroup                      => $dggroup,
    dgmode                       => $dgmode,
  } ->
  class { '::dansguardian::service':
    service_ensure => $service_ensure,
    service_manage => $service_manage,
    service_enable => $service_enable,
  }
}
