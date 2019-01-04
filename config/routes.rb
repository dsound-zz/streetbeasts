Rails.application.routes.draw do



  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'


  patch '/posts/:id' => 'posts#like', as: 'like'
  patch '/posts/:id' => 'posts#update'
  post '/posts/:id' => 'posts#create'

  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :animals
  resources :posts, only: [:index, :show, :new, :edit, :create, :destroy] do
    resources :comments, module: :posts
  end



end









  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
