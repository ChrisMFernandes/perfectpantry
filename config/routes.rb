Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  
  root to: "home#index"

  get "knives", to: "home#knives"
  get "spices", to: "home#spices"
  get "steak", to: "home#steak"
  post 'recipes/search' => 'recipes#search', as: 'search_recipes'

  resources :recipes
  resources :ingredients
  resources :favorites
end


