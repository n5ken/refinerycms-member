module Refinery
  class MembersGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    class_option :skip_db,
                 :desc => "Skip over any database creation, migration or seeding.",
                 :type => :boolean, :default => false, :aliases => nil, :group => :runtime
    class_option :skip_migrations,
                 :desc => "Skip over installing or running migrations.",
                 :type => :boolean, :default => false, :aliases => nil, :group => :runtime

    def generate
      migrate_database!
    end

    def generate_members_initializer
      template "config/initializers/refinery/members.rb.erb", File.join(destination_root, "config", "initializers", "refinery", "members.rb")
    end


    private

    def migrate_database!
      unless self.options[:skip_migrations]
        rake 'refinery_members:install:migrations'
        rake 'db:create db:migrate' unless self.options[:skip_db]
      end
    end
  end
end
