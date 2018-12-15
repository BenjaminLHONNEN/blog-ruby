Rails.application.routes.draw do
  localized do
    devise_for :users
    get '/setcurrency', to: 'posts#setCurrency', as: 'postSetCurency'
    get '/posts/:id', to: 'posts#detail', as: 'post'
    root to: 'posts#index'
    namespace :admin do
      root to: 'admin#dashboard'
      get '/posts/', to: 'posts#index', as: 'index'
      get '/posts/new', to: 'posts#new', as: 'new'
      get '/posts/:id', to: 'posts#edit', as: 'post'
      resources :posts
    end
  end
end
