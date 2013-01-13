module Refinery
  module Admin
    class MembersController < Refinery::AdminController
      crudify :member,
      :title_attribute => 'email', :xhr_paging => true
    end
  end
end
