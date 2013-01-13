module Refinery
  module Admin
    class MembersController < Refinery::AdminController
      crudify :"refinery/member",
      :title_attribute => 'email', :xhr_paging => true
    end
  end
end
