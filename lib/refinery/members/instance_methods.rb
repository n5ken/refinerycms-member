module Refinery
  module Members
    module InstanceMethods
      protected

      def current_user_can_view_page?
        if page.need_login? && !member_signed_in?
          false
        else
          super
        end
      end
    end
  end
end
