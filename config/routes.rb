Kateco::Application.routes.draw do
  
  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "/contact", to: "pages#contact", as: "contact"
  get "/about", to: "pages#about", as: "about"
  resources "contacts", only: [:new, :create]
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"
  
end
