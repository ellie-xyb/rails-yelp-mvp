# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show'
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: [:delete]
end
