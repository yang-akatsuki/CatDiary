Rails.application.routes.draw do

  devise_for :users

  resources :diaries do
    resources :reviews, only: [:create]
  end

  resources :users, only: [:show]

  root 'diaries#index'
end
