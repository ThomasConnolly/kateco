Kateco::Application.routes.draw do
  resources :manufacturers
  resources :users
  root "pages#home"    
  get "/about", to: "pages#about", as: "about"
  get "/contact_us", to: "pages#contact", as: "contact_us"
  resources "users", only: [:new, :create]
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"
  
end

