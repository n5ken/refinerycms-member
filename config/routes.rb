Refinery::Core::Engine.routes.prepend do
  devise_for :members

  namespace :admin, :path => 'refinery' do
    resources :members, :except => :show do
      post :update_positions, :on => :collection
    end
  end
end
