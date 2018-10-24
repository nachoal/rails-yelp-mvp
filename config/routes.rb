Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  get 'restaurants', to: 'restaurants#index'

  get 'restaurants/new', to: 'restaurants#new'
  post "restaurants", to: 'restaurants#create'

  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # reviews url:
  get "restaurants/:id/reviews", to: 'reviews#index', as: 'reviews'
  get 'restaurants/:id/reviews/new', to: 'reviews#new'
  post 'restaurants/:id/reviews', to: 'reviews#create'
end
