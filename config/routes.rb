Rails.application.routes.draw do



  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :animals
  resources :posts
  

end









  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
