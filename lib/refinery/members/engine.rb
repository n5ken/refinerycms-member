module Refinery
  module Members
    class Engine < ::Rails::Engine
      include Refinery::Engine

      engine_name :refinery_members

      config.autoload_paths += %W( #{config.root}/lib )

      initializer "register refinery_images plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = "refinery_members"
          plugin.version = %q{0.3.1}
          plugin.menu_match = %r{refinery/member(_dialog)?s$}
          plugin.activity = {
            :class_name => :"refinery/member",
            :title => "email"
          }
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.admin_members_path }
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Members)
      end
    end
  end
end
