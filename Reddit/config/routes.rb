Rails.application.routes.draw do

  resources :subs do
    resources :posts, only: [:create]
  end
  resources :posts, except: [:create, :index] do
    resources :comments, only: [:new]
  end
  resources :users
  resource :session, only: [:new, :create, :destroy]

  resources :comments, only: [:create, :show]
end
