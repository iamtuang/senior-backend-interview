source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.5'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'i18n-tasks'
gem 'money-rails'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.0.3', '>= 6.0.3.7'
gem 'sass-rails', '>= 6'
gem 'scenic', '~> 1.5'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
end

group :development do
  gem 'foreman'
  gem 'listen', '~> 3.2'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
