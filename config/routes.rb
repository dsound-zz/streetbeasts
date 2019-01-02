Rails.application.routes.draw do

  root to: "posts#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :animals
  resources :posts, only: [:index, :show, :new, :create, :edit, :destroy] do
    resources :comments, module: :posts
  end

  patch '/posts/:id' => 'posts#like', as: 'like'
  patch '/posts/:id' => 'posts#update'

end









  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
