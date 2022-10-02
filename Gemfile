source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails", "3.4.2"
gem "font-awesome-rails", "4.7.0.8"
gem "puma", "~> 5.0"
gem "importmap-rails", "1.1.5"
gem "turbo-rails", "1.1.1"
gem "stimulus-rails", "1.1.0"
gem "jbuilder", "2.11.5"
gem "bcrypt", "~> 3.1.7"
gem "bootsnap", "1.13.0", require: false
gem "nokogiri", "1.13.8"
gem "css_parser", "1.11.0"
gem "gravtastic", "3.2.6"
gem "friendly_id", "~> 5.1.0"

group :production do
  gem "pg"
end

group :development, :test do
  gem "sqlite3", "~> 1.4"
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "bullet", "7.0.3"
end

group :development do
  gem "web-console", "4.2.0"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
