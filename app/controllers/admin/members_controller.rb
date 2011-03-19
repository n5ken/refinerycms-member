module Admin
  class MembersController < Admin::BaseController

    crudify :member,
            :title_attribute => 'email', :xhr_paging => true

  end
end
