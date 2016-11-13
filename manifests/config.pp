class dansguardian::config(
  $naughtyness_limit,
  $banned_extensions,
  $banned_mimetypes,
  $bannedsite_includes,
  $bannedsite_time,
  $bannedsite_category,
  $bannedsite_other,
  $bannedsite_blanketblock,
  $bannedsite_blanketSSLblock,
  $bannedsite_blanketIPblock,
  $bannedsite_blanketIPSSLblock,
  $bannedsite_lists,
  $phraselist,
  $urlregexplist,
  $headerregexplist,
  $exceptionregexpurllist,
  $contentregexplist,
  $language,
  $dgcfgdir,
  $dguser,
  $dggroup,
  $dgmode,
) inherits dansguardian {
  file { "${dgcfgdir}/dansguardian.conf":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/dansguardian.conf",
    content => template('dansguardian/dansguardian.conf.erb'),
    notify  => Service['dansguardian'],
  }
  file { "${dgcfgdir}/dansguardianf1.conf":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/dansguardianf1.conf",
    content => template('dansguardian/dansguardianf1.conf.erb'),
    notify  => Service['dansguardian'],
  }
  file { "${dgcfgdir}/lists/bannedextensionlist":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/lists/bannedextensionlist",
    content => template('dansguardian/bannedextensionlist.erb'),
    notify  => Service['dansguardian'],
  }
  file { "${dgcfgdir}/lists/bannedmimetypelist":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/lists/bannedmimetypelist",
    content => template('dansguardian/bannedmimetypelist.erb'),
    notify  => Service['dansguardian'],
  }
  file { "${dgcfgdir}/lists/bannedsitelist":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/lists/bannedsitelist",
    content => template('dansguardian/bannedsitelist.erb'),
    notify  => Service['dansguardian'],
  }
  file { "${dgcfgdir}/lists/weightedphraselist":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/lists/weightedphraselist",
    content => template('dansguardian/weightedphraselist.erb'),
    notify  => Service['dansguardian'],
  }
  file { "${dgcfgdir}/lists/urlregexplist":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/lists/urlregexplist",
    content => template('dansguardian/urlregexplist.erb'),
    notify  => Service['dansguardian'],
  }
  file { "${dgcfgdir}/lists/headerregexplist":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/lists/headerregexplist",
    content => template('dansguardian/headerregexplist.erb'),
    notify  => Service['dansguardian'],
  }
  file { "${dgcfgdir}/lists/exceptionregexpurllist":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/lists/exceptionregexpurllist",
    content => template('dansguardian/exceptionregexpurllist.erb'),
    notify  => Service['dansguardian'],
  }
  file { "${dgcfgdir}/lists/contentregexplist":
    ensure  => present,
    owner   => $dguser,
    group   => $dggroup,
    mode    => $dgmode,
    path    => "${dgcfgdir}/lists/contentregexplist",
    content => template('dansguardian/contentregexplist.erb'),
    notify  => Service['dansguardian'],
  }
}
