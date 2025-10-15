# Trusted Publishing Test

A minimal Ruby gem for testing trusted publishing on rubygems.org.

## Purpose

This gem exists solely to test the trusted publishing workflow, which allows publishing gems to RubyGems.org from GitHub Actions without requiring API keys.

## Setup

### 1. Configure Trusted Publishing on RubyGems.org

1. Log in to rubygems.org
2. Navigate to your gem's page (or create a new gem)
3. Go to Settings > Trusted Publishing
4. Add a new trusted publisher with:
   - Repository owner: `RubyGemsOrg`
   - Repository name: `trusted-publishing-test`
   - Workflow filename: `publish.yml`
   - Environment name: (leave empty unless using GitHub environments)

### 2. Create a Release

To publish a new version:

1. Update the version in `lib/trusted_publishing_test/version.rb`
2. Commit the changes
3. Create and push a git tag:
   ```bash
   git tag v0.1.0
   git push origin v0.1.0
   ```

The GitHub Actions workflow will automatically:
- Build the gem
- Publish it to RubyGems.org using trusted publishing (no API key required)

## Installation

You probably don't want to install this, but in case you do: Add this line to your application's Gemfile:

```ruby
gem 'trusted_publishing_test'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install trusted_publishing_test
```

## Usage

```ruby
require 'trusted_publishing_test'

TrustedPublishingTest.hello
# => "Hello from Trusted Publishing Test gem v0.1.0!"
```

## License

MIT
