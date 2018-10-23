Rails.application.routes.draw do
  devise_for :users
  get '/posts/:id', to: 'posts#detail', as: 'post'
  root to: 'posts#index'

  namespace :admin do
    root to: 'posts#index'
    get '/posts/new', to: 'posts#new', as: 'new'
    get '/posts/:id', to: 'posts#edit', as: 'post'
    resources :posts
  end
end
