Refinery::Core::Engine.routes.draw do
  devise_for :members, :class_name => "Refinery::Members::Member", :module => "refinery/members"

  namespace :members, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :members, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end
end
