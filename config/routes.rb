Refinery::Core::Engine.routes.draw do
  devise_for :members, :class_name => "Refinery::Member", :module => "refinery/members"

  namespace :admin, :path => 'refinery' do
    resources :members, :except => :show do
      post :update_positions, :on => :collection
    end
  end
end
