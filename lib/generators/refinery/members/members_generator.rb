module Refinery
  class MembersGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    class_option :skip_migrations,
                 :desc => "Skip over installing or running migrations.",
                 :type => :boolean, :default => false, :aliases => nil, :group => :runtime

    def generate
      migrate_database!
    end

    private

    def migrate_database!
      unless self.options[:skip_migrations]
        rake 'refinery_members:install:migrations'
      end
    end
  end
end
