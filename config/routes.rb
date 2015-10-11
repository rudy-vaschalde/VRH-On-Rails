Rails.application.routes.draw do

  resources :articles
  root "public#index"

  resources :public, only: [:index] do
    collection do
      get :about
      get :nat2
      get :nat4
      get :contact
    end
  end

  resources :games
  resources :players
  resources :ranks
  resources :teams
  resources :seasons
  resources :championships
  devise_for :users
end
