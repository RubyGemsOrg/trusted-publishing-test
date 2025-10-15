require_relative "trusted_publishing_test/version"

module TrustedPublishingTest
  class Error < StandardError; end

  def self.hello
    "Hello from Trusted Publishing Test gem v#{VERSION}!"
  end
end
