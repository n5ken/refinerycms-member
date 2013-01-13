Refinery::Core::Engine.routes.prepend do
  devise_for :members, :class_name => "Refinery::Member"

  namespace :admin, :path => 'refinery' do
    resources :members, :except => :show do
      post :update_positions, :on => :collection
    end
  end
end
