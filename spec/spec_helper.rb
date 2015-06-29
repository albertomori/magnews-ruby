$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require "rspec"
require "shoulda/matchers"
require "pry-byebug"
require "webmock/rspec"
require "priscilla"
require "simplecov"

SimpleCov.start do
 add_filter "/spec/"
end

require "magnews"

Dir[File.expand_path("../support/**/*.rb", __FILE__)].sort.each { |f| require f }

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

# WebMock.allow_net_connect!
WebMock.disable_net_connect!(allow_localhost: true)
