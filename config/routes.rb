Rails.application.routes.draw do

  root to: "posts#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  patch '/posts/:id' => 'posts#like', as: 'like'

  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :animals
  resources :posts do
    resources :comments, module: :posts
  end


end









  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
