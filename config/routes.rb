Rails.application.routes.draw do

  devise_for :users

  resources :diaries do
    resources :reviews, only: [:new, :create]
    collection do
      get'search'
    end
  end



  resources :users, only: [:show]

  root 'diaries#index'


end