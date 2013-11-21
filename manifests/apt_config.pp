class newrelic::apt_config ($ensure = 'present') {
  apt::source { "newrelic":
    location    => 'http://apt.newrelic.com/debian/',
    key         => '548C16BF',
    key_source  => 'http://download.newrelic.com/548C16BF.gpg',
    include_src => false,
    release     => 'newrelic',
    repos       => 'non-free'
  }

}
