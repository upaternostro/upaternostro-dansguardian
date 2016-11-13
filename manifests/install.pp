class dansguardian::install (
  $package_ensure = present,
  $package_name = 'dansguardian'
) inherits dansguardian {

  package { 'dansguardian':
    ensure => $package_ensure,
    name   => $package_name,
  }
}
