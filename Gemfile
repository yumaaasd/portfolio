source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.8'

gem 'rails', '~> 5.2.3'
gem 'sqlite3'
gem 'puma', '~> 4.3.6'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'mini_portile2', '~> 2.8'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # activate these gems
  # gem 'better_errors' # render better error page
  # gem 'binding_of_caller' # use irb on better_errors
  gem 'pry-rails' # use binding.pry
  gem 'pry-byebug' # use step over on binding.pry
  gem 'pry-doc' # extend pry document support
  gem 'rubocop'
  gem 'rails_best_practices'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'webdrivers'
  gem 'rspec-rails'
  gem 'rspec_junit_formatter'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
