# Refinery CMS Member

Simple member engine for [Refinery CMS](http://refinerycms.com). It supports members management and page privilege setting.

This version of `refinerycms-member` supports Rails 3.0.x, development for RefineryCMS 0.9.9 and upper.

## Requirements

Refinery CMS version 0.9.9 or above.

## Install

Download the source code and place under folder "RAILS_ROOT/vendor/engines"

Open up your ``Gemfile`` and add at the bottom this line:

    gem 'refinerycms-members', '1.0', :path => 'vendor/engines'

Now, run ``bundle install``

Next, to install the member plugin run:

    rails generate refinerycms_members

Finally migrate your database and you're done.

    rake db:migrate

## How to build this engine as a gem

    cd vendor/engines/members
    gem build refinerycms-members.gempspec
    gem install refinerycms-members.gem
    
    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-members.gem
