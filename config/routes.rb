Practice1::Application.routes.draw do
  resources :contacts

  root :to => 'pages#home' 

  match '/home', to: 'pages#home'
  match '/about', to: 'pages#about'
  match '/services', to: 'pages#services'
  match '/portfolio', to: 'pages#portfolio'
  match '/contacts', to: 'contacts#new'

end
