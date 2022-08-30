source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# ruby '2.6.3'
ruby '3.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1', '>= 3.1.15'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
gem 'sequel', '~> 4.36'
gem 'devise'
gem 'sqlite3'

gem 'coffee-rails', '~> 5.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

#gem 'bootsnap', '>= 1.4.2', require: false
gem 'jquery-rails', '~> 4.4'
gem 'cancancan'
gem 'popper_js', '~> 1.16'
gem 'bootstrap', '~> 4.5.0'
#gem 'solargraph', '~> 0.39.12'




group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry', '~> 0.13.1' # Pry is a runtime developer console and IRB alternative with powerful introspection capabilities. Pry aims to be more than an IRB replacement. It is an attempt to bring REPL driven programming to the Ruby language.
  gem 'pry-rails', '~> 0.3.9' # Use Pry as your rails console
  gem 'hirb', '~> 0.7.3' #Hirb provides a mini view framework for console applications and uses it to improve ripl(irb)'s default inspect output. Given an object or array of objects, hirb renders a view based on the object's class and/or ancestry. Hirb offers reusable views in the form of helper classes. The two main helpers, Hirb::Helpers::Table and Hirb::Helpers::Tree, provide several options for generating ascii tables and trees. Using Hirb::Helpers::AutoTable, hirb has useful default views for at least ten popular database gems i.e. Rails' ActiveRecord::Base. Other than views, hirb offers a smart pager and a console menu. The smart pager only pages when the output exceeds the current screen size. The menu is used in conjunction with tables to offer two dimensional menus.
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1' #rspec-rails is a testing framework for Rails 5+.
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5' #Extracting `assigns` and `assert_template` from ActionDispatch.
  gem 'factory_bot_rails', '~> 6.1' #factory_bot_rails provides integration between factory_bot and rails 5.0 or newer
  gem 'faker' ,'~> 2.13' #Faker, a port of Data::Faker from Perl, is used to easily generate fake data: names, addresses, phone numbers, etc.
  gem 'cowsay','~> 0.3.0' #ASCII art avatars emote your messages
  gem "nyan-cat-formatter"


end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
