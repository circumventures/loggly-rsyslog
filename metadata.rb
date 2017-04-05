name             'loggly-rsyslog'
maintainer       'Anthony Faoro'
maintainer_email 'tony@circumventures.com'
license          'Apache 2.0'
description      'Configures rsyslog to send logs to Loggly'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.1.3'

supports 'ubuntu', '>= 12.04'

depends 'rsyslog', '~> 6.0.1' # was "~> 1.5.0"
