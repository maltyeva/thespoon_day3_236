Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    collection do
      get '/top', to: "restaurants#top"
    end
    member do
      get '/chef', to: "restaurants#chef"
    end
    resources :reviews, shallow: true
  end

  namespace :api do
    resources :restaurants, only: :index
  end

  root to: "restaurants#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
