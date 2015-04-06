Kateco::Application.routes.draw do
  
  
  devise_for :users
  resources :manufacturers
  root "manufacturers#index", as: 'home'    
  get "/about", to: "pages#about", as: "about"
  resources "contacts", only: [:new, :create]
  resources :admin
end

