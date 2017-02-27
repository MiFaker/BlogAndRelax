source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "coffee-rails", "~> 4.2"
gem "jbuilder"
gem "jquery-rails"
gem "kaminari"
gem "puma", "~> 3.0"
gem "rails", "~> 4.2", ">= 4.2.7.1"
gem "ransack"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"

# authentication
gem "devise"

# layout
gem "bootstrap-sass"

# ORM
gem "mysql2"

# support
gem "config"
gem "dotenv-rails"

# management admin
gem "rails_admin", "~> 1.0"

gem "gibbon"

# mailchimp
gem "mailchimp-api", require: "mailchimp"

group :development, :test do
  gem "better_errors"
  gem "byebug", platform: :mri
  gem "factory_girl_rails"
  gem "faker"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-collection_matchers"
  gem "rspec-rails"
  gem "simplecov"
  gem "simplecov-rcov"
end

group :development do
  gem "brakeman", require: false
  gem "bundler-audit", "~> 0.4.0"
  gem "foreman"
  gem "listen", "~> 3.0.5"
  gem "rails_best_practices"
  gem "reek"
  gem "robocop", require: false
  gem "rubocop-checkstyle_formatter"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
