Rails.application.routes.draw do
  get 'api/Pokemon'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # config/routes.rb
  namespace :api, defaults: { format: :json } do
    get '/pokemon/types', to: 'pokemon#types'
    resources :pokemon, only: [:index, :create, :show, :update] do
      resources :items, only: [:index, :create], module: :pokemon
    end
    resources :items, only: [:update, :destroy]
    
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
