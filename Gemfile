# frozen_string_literal: true

source "http://rubygems.org"

gemspec

# CMS has dependency on prerelease and Bundler chokes on it
gem "rails", "~> 8.0"
gem "comfortable_mexican_sofa", git: "https://github.com/tyrant/comfortable-mexican-sofa"

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "kaminari", "~> 1.2"
  gem "puma", "~> 6.0"
  gem "rubocop", "~> 1.60", require: false
  gem "sqlite3", "~> 2.0"
end

group :development do
  gem "listen", "~> 3.9"
  gem "web-console", "~> 4.2"
end

group :test do
  gem "coveralls", "~> 0.8", require: false
  gem "mocha", "~> 2.0", require: false
  gem "rails-controller-testing", "~> 1.0"
end
