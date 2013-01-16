module Refinery
  module Members
    class Engine < ::Rails::Engine
      include Refinery::Engine

      engine_name :refinery_members

      config.autoload_paths += %W( #{config.root}/lib )

      after_inclusion do
        Refinery::PagesController.send :include, Refinery::Members::InstanceMethods
      end

      initializer "register refinery_members plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = "refinery_members"
          plugin.menu_match = %r{refinery\/members(\/.+?)?$}
          plugin.activity = {
            :class_name => :"refinery/members/member",
            :title => "email"
          }
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.members_admin_members_path }
        end
      end

      config.before_configuration do |app|
        app.config.railties_order = [Members::Engine, Pages::Engine, :all, :main_app]
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Members)
      end
    end
  end
end
