module Refinery
  class PagesController < ::ApplicationController
    # This action is usually accessed with the root path, normally '/'
    def home
      error_404 unless (@page = Page.where(:link_url => '/').first).present?
    end

    def show
      @page = Page.find("#{params[:path]}/#{params[:id]}".split('/').last)

      if @page.need_login and !member_signed_in?
        flash[:notice] = I18n.t("members.need_login")
        redirect_to '/members/sign_in' and return 
      end

      if @page.try(:live?) || (refinery_user? && current_user.authorized_plugins.include?("refinery_pages"))
        # if the admin wants this to be a "placeholder" page which goes to its first child, go to that instead.
        if @page.skip_to_first_child && (first_live_child = @page.children.order('lft ASC').where(:draft => false).first).present?
          redirect_to first_live_child.url
        elsif @page.link_url.present?
          redirect_to @page.link_url and return
        end
      else
        error_404
      end
    end
  end
end
