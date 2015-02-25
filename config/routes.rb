Kateco::Application.routes.draw do
  
  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "/about", to: "pages#about", as: "about"
  #get "/contact", to: "pages#contact", as: "contact"
  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"
  
end
