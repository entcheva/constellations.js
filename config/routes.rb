Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      post 'signup', to: 'users#create'
      post 'login', to: 'users#login'
      get 'active', to: 'users#active'
      resources :stars
      resources :constellations
    end
  end
end
