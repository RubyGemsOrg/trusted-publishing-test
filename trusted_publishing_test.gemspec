require_relative "lib/trusted_publishing_test/version"

Gem::Specification.new do |spec|
  spec.name = "trusted_publishing_test"
  spec.version = TrustedPublishingTest::VERSION
  spec.authors = ["Ruby Central"]
  spec.email = ["noreply@rubycentral.org"]

  spec.summary = "A minimal gem for testing trusted publishing on rubygems.org"
  spec.description = "This gem exists solely to test the trusted publishing workflow on rubygems.org"
  spec.homepage = "https://github.com/RubyGemsOrg/trusted-publishing-test"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir["lib/**/*.rb", "README.md", "LICENSE.txt", "CHANGELOG.md"]
  spec.require_paths = ["lib"]
end
