source 'https://rubygems.org'

# Require a specific version of Ruby MDM
#ruby '2.1.1'
ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

# Use sqlite3 as the database for Development and Test
# Define a development and test enviroment #MDM
gem 'sqlite3', group: [:development, :test]

# Heroku needs to use Postgres... so specify to use that in production #MDM
gem 'pg', group: :production

# Add 12 factor for Heroku #MDM
gem 'rails_12factor', group: :production

# Add bootstrap for improving the look and feel.  The bootstrap-sass is a flavor that works well with rails. #MDM
gem 'bootstrap-sass'

# Add Stripe for eCommerce payment functionality #MDM
gem 'stripe', :git =>'https://github.com/stripe/stripe-ruby'

# Add Figaro gem for securely managing credentials
gem 'figaro'

# Add letter opener for handling emails in development #MDM
gem 'letter_opener', group: :development


# Add activeadmin to generate an admin interface #MDM
gem 'activeadmin', github: 'gregbell/active_admin'

# Add devise to suport login for activeAdmin #MDM
gem 'devise'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

