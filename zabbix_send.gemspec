# -*- encoding: utf-8 -*-
require File.expand_path('../lib/zabbix_send/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike English"]
  gem.email         = ["mike.english@atomicobject.com"]
  gem.description   = %q{Send data to Zabbix trappers from Ruby}
  gem.summary       = %q{Ruby implementation of Zabbix sender protocol}
  gem.homepage      = "https://github.com/englishm/zabbbix_send"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "zabbix_send"
  gem.require_paths = ["lib"]
  gem.version       = ZabbixSend::VERSION
end
