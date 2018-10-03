Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  
  root to: "home#index"

  get "knives", to: "home#knives"
  get "spices", to: "home#spices"
  get "steak", to: "home#steak"
  get 'recipes/search' => 'recipes#search'

  resources :recipes
  resources :ingredients
  resources :favorites
end


