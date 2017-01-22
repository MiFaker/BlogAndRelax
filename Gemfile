source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 4.2", ">= 4.2.7.1"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"

#authentication
gem "devise"

#layout
gem "bootstrap-sass"

#ORM
gem "mysql2"

#support
gem "dotenv-rails"

group :development, :test do
  gem "rspec-rails"
  gem "byebug", platform: :mri
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "pry-byebug"
  gem "better_errors"
  gem "simplecov"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "robocop", require: false
  gem "foreman"
  gem "rubocop-checkstyle_formatter"
  gem "brakeman"
  gem "bundler-audit", "~> 0.4.0"
  gem "rails_best_practices"
  gem "reek"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
