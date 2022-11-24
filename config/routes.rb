Rails.application.routes.draw do
  resources :console_collections
  resources :consoles
  resources :game_collections
  resources :games
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
