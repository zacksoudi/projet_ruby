Rails.application.routes.draw do
  resources :users  

  get 'users/new'

  root 'pages#home'
  get 'home' => 'pages#home'
  get '/signup' => 'users#new'

  

  
end
