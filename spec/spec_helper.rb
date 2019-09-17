# frozen_string_literal: true

RSpec.configure do |config|
  Dir[File.join(File.dirname(__FILE__), "../lib/**/*.rb")].each { |f| require f }
end
