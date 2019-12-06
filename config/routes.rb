Rails.application.routes.draw do
 
  resources :users, only: [:new, :create, :show, :destroy]
  resources :posts 
  resources :categories
  resources :products
  resources :brands 
  resources :categories_posts
  delete '/products/:id', to: 'products#destroy', as:'product_delete'
  delete '/post/:id', to: 'posts#destroy', as:'post_delete'
  get '/signup', to: "user#new"
  post '/signup', to: "user#create"
  get '/login', to: "auth#signin"
  post '/login', to: "auth#verify"

  get '/logout', to: "auth#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
