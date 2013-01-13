require 'refinery'

module Refinery
  module Members
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "members"
          plugin.activity = {
            :class => Member,
            :title => 'email'
          }
        end
      end
    end
  end
end
