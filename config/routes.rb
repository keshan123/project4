Rails.application.routes.draw do
  post '/posts' =>'posts#create'

  root 'static_pages#home'
  resources :users
  match "/signup", to: "users#new", via: "get", as: "signup"
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
end
