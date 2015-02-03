Kateco::Application.routes.draw do
  
  resources :clients

  resources :suppliers

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "/contact", to: "pages#contact", as: "contact"
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"
  
end
