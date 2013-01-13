# Refinery CMS Members

Simple member engine for [Refinery CMS](http://refinerycms.com). It supports member management and page privilege setting.

This version of `refinerycms-members` supports Rails 3.2.x, development for RefineryCMS 2.0 and above.

## Install

Open up your `Gemfile` and add:

    gem 'refinerycms-members'

Run `bundle install`

Next, to install the members plugin run:

    rails generate refinery:members

Finally migrate your database and you're done.

    rake db:migrate

## How to build this engine as a gem

    gem build refinerycms-members.gemspec
    gem install refinerycms-members.gem
    
    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-members.gem
