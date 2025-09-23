Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts
  root "posts#index"
  get 'zunda', to: 'zunda#index'

  # Defines the root path route ("/")
  # root "articles#index"
  # localhost:3000/posts/
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy, ]
end