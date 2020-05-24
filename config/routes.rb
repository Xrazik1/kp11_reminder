Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'groups#index'

  resources :groups, only: %i[show index] do
    resources :weeks do
      resources :days do
        post '/notices' => "notices#create_inline", :as => :create_inline
      end
    end
  end
end
