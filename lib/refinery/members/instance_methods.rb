module Refinery
  module Members
    module InstanceMethods
      extend ActiveSupport::Concern

      included do
        alias_method_chain :current_user_can_view_page?, :members
      end

      protected

      def current_user_can_view_page_with_members?
        if page.need_login? && !member_signed_in?
          false
        else
          current_user_can_view_page_without_members?
        end
      end
    end
  end
end
