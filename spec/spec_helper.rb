require 'bundler/setup'
Bundler.setup

require 'lokalebasen_settings_client'
require 'vcr'
require 'webmock'

VCR.configure do |config|
  config.cassette_library_dir = "fixtures/vcr_cassettes"
  config.hook_into :webmock
end

RSpec.configure do |config|

end
