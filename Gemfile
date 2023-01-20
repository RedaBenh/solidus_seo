# frozen_string_literal: true
ruby '~>2.7.3'
source 'https://rubygems.org'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem "solidus", github: "solidusio/solidus", branch: branch
# Provides basic authentication functionality for testing parts of your engine
gem 'solidus_auth_devise'

gem "rails", '>= 7.0.4' # workaround for bundler resolution issue
gem "rails-controller-testing", group: :test

if branch == 'master' || branch >= 'v2.5'
  gem 'factory_bot', '> 4.10.0', group: :test
else
  gem 'factory_bot', '4.10.0', group: :test
end

gem 'mysql2'
gem 'pg'

group :test do
  gem 'deface'
  gem 'webdrivers'
end

gemspec

gem "solidus_frontend", '~> 3.2'
