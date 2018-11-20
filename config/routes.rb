Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: "users/sessions"
      }
  
  root :to => "home#index"

  get "knives" => "home#knives"
  get "spices" => "home#spices"
  get "steak" => "home#steak"
  get "recipes/search" => "recipes#search"

  resources :recipes
  resources :ingredients
  resources :favorites
end


