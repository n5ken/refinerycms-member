Refinery::Application.routes.draw do
  devise_for :members

  resources :members, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :members, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
