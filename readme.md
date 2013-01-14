# Refinery CMS Members

Simple member engine for [Refinery CMS](http://refinerycms.com). It supports member management and page privilege setting.

This version of `refinerycms-members` supports Rails 3.2.x, development for RefineryCMS 2.0 and above.

## Install

Open up your `Gemfile` and add:

    gem 'refinerycms-members'

Run `bundle install`

Next, to install the members plugin run:

    rails generate refinery:members

Note that the above task copies `*.refinery_members.rb` migration files to your `db/migrate` directory.
You should examine `*_create_members.refinery_members.rb` file and adjust it (if necessary)
to enable or disable Devise strategies and options that are appropriate for your flavor of members.

Finally migrate your database and you're done.

    rake db:migrate

## How to build this engine as a gem

    gem build refinerycms-members.gemspec
    gem install refinerycms-members.gem
    
    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-members.gem

# Authors

  - [n5ken](https://github.com/n5ken)
  - [Slava Kravchenko](https://github.com/cordawyn)
