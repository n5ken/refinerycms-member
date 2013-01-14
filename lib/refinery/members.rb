require "refinerycms-core"

module Refinery
  autoload :MembersGenerator, "generators/refinery/members/members_generator"

  module Members
    require "refinery/members/engine"

    autoload :InstanceMethods, "refinery/members/instance_methods"

    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        # TODO?
        @factory_paths ||= [ root.join("spec/factories").to_s ]
      end
    end
  end
end
