default['loggly']['tags'] = []

default['loggly']['log_files'] = []
default['loggly']['log_dirs'] = []

default['loggly']['tls']['enabled'] = true
default['loggly']['tls']['cert_path'] = '/etc/rsyslog.d/keys/ca.d'
default['loggly']['tls']['cert_url'] = 'https://logdog.loggly.com/media/logs-01.loggly.com_sha12.crt'
default['loggly']['tls']['cert_checksum'] = 'b562ae82b54bcb43923290e78949153c0c64910d40b02d2207010bb119147ffc'
# default['loggly']['tls']['intermediate_cert_url'] = 'https://certs.secureserver.net/repository/sf_bundle.crt'
# default['loggly']['tls']['intermediate_cert_checksum'] = '87d171b3333c'

default['loggly']['token']['from_databag'] = true
default['loggly']['token']['databag'] = 'loggly'
default['loggly']['token']['databag_item'] = 'token'
default['loggly']['token']['value'] = '' # Will be set from Data Bag above by default

default['loggly']['rsyslog']['conf'] = '/etc/rsyslog.d/10-loggly.conf'

default['loggly']['rsyslog']['host'] = 'logs-01.loggly.com'
default['loggly']['rsyslog']['port'] = node['loggly']['tls']['enabled'] ? 6514 : 514

default['loggly']['rsyslog']['input_file_poll_interval'] = 10

default['loggly']['rsyslog']['workdirectory'] = '/var/spool/rsyslog'
default['loggly']['rsyslog']['actionqueuefilename'] = node.name
default['loggly']['rsyslog']['actionqueuemaxdiskspace'] = '1g'
