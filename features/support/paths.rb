module NavigationHelpers
  module Refinery
    module Members
      def path_to(page_name)
        case page_name
        when /the list of members/
          admin_members_path

         when /the new member form/
          new_admin_member_path
        else
          nil
        end
      end
    end
  end
end
