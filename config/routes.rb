Rails.application.routes.draw do
  # Temporary root
  root "seasons#index"

  resources :games
  resources :players
  resources :ranks
  resources :teams
  resources :seasons
  resources :championships
  devise_for :users
end
