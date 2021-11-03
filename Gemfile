source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'bootsnap'
gem 'mysql2'
gem 'puma'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'webpacker', '~> 6.0.0.beta.6'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
end

group :development do
  gem 'web-console'
  gem 'rack-mini-profiler'
  gem 'listen'
  gem 'spring'
end

group :test do
  gem 'capybara'
  gem 'rexml'
  gem 'selenium-webdriver'
end
