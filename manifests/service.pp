class dansguardian::service (
  $service_ensure,
  $service_manage,
  $service_enable
) inherits dansguardian {

  if ! ($service_ensure in ['running', 'stopped']) {
    fail('service_ensure parameter must be running or stopped')
  }

  if ($service_manage) {
    service { 'dansguardian':
      ensure     => $service_ensure,
      enable     => $service_enable,
      hasstatus  => true,
      hasrestart => true,
    }
  }
}
