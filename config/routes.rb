Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  
  root to: "home#index"

  resources :recipes
  resources :ingredients
  resources :favorites
end
