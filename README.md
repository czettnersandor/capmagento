# Capmagento

This gem provides a number of tasks which are useful for deploying Magento projects with [Capistrano](https://github.com/capistrano/capistrano).

## Installation
[rubygems](http://rubygems.org) must be installed on your system first.

### From RubyGems.org

    $ gem install capdrupal

### Install with Bundler (recomanded)

This version use capistrano 3. To avoid conflicts, I recommend to install both capistrano and capmagento from Bundler.

Create a 'Gemfile' on the root of your project

    group :development do
      gem 'capmagento', '~> 1.0.0'
    end

Install the depencies

    $ bundle install

Add it to the Capfile:

    require 'capmagento'

Use capistrano through bundle

    $ bundle exec cap mage:cc

for available commands, see:

    $ bundle exec cap -T

    cap mage:cc                        # Clear Magento Cache
    cap mage:disable                   # Disable the Magento install by creating the maintenance.flag in the web root
    cap mage:enable                    # Enable the Magento stores by removing the maintenance.flag in the web root
    cap mage:hwscache                  # Clear Cheetah Cache
    cap mage:hwscc                     # Clear Cheetah Cache
    cap mage:indexer                   # Run the Magento indexer
