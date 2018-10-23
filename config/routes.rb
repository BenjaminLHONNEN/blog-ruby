Rails.application.routes.draw do
  devise_for :users
  get '/posts/:id', to: 'posts#detail', as: 'post'
  root to: 'posts#index'
  namespace :admin do
    root to: 'posts#index'
    resources :posts
  end
end
