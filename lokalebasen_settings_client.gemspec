# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lokalebasen_settings_client/version'

Gem::Specification.new do |spec|
  spec.name          = "lokalebasen_settings_client"
  spec.version       = LokalebasenSettingsClient::VERSION
  spec.authors       = ["Martin Neiiendam"]
  spec.email         = ["fracklen@gmail.com"]
  spec.summary       = %q{Caching HTTP Client for fetching and caching central site settings.}
  spec.description   = %q{Caching HTTP Client for fetching and caching central site settings.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "excon"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency 'timecop'

end
