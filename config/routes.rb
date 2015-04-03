Kateco::Application.routes.draw do
  
  resources :admin
  resources :manufacturers
  root "manufacturers#index", as: 'home'    
  get "/about", to: "pages#about", as: "about"
  resources "contacts", only: [:new, :create]
  resources "users", only: [:new, :create]
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create", as: "signup"
  get "/logout", to: "sessions#destroy"
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation" 
end

