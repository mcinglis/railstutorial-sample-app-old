source :rubygems

gem "rails", "3.2.11"

gem "bcrypt-ruby"

gem "jquery-rails"

group :assets do
  gem "sass-rails"
  gem "uglifier"
  gem "bootstrap-sass"
end

group :production do
  gem "pg"
end

group :development, :test do
  gem "sqlite3"
  gem "rspec-rails"

  # Monitor file changes on Linux, for Guard
  gem "rb-inotify", "~> 0.8.8", require: false

  gem "guard-rspec"
  gem "guard-cucumber"
  gem "guard-spork"
end

group :test do
  gem "capybara"
  gem "factory_girl_rails"
  gem "cucumber-rails", require: false
  gem "database_cleaner"
end
