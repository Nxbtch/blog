source 'https://ruby.taobao.org'

ruby '2.3.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.0.beta3'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails'
gem 'bootstrap-sass'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5.0.0.beta'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# template engine
gem 'haml'
gem 'haml-rails'

# pagination
gem 'kaminari'

# deploy

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# settings
gem 'settingslogic'

# editor
gem 'codemirror-rails'

# fake data
gem 'ffaker', require: false
gem 'faker', require: false
gem 'useragents', require: false

# markdown
gem 'redcarpet'

# authentication
gem 'devise', '~>4.0.0.rc1'

# simpleform
gem 'simple_form'

# app server
gem "passenger"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails'
  gem 'better_errors'
  gem 'pry-byebug'
  gem 'byebug'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'binding_of_caller'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-passenger', '>= 0.1.1'
  gem 'capistrano-rvm'
  gem 'capistrano-rails'

  gem 'web-console', '~> 2.0'
  gem 'quiet_assets'

  gem 'listen', '~> 3.0.5'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
