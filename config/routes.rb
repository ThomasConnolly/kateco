Kateco::Application.routes.draw do
  
  resources :factory_contacts

  root "pages#home"    
  get "/about", to: "pages#about", as: "about"
  #get "/contact", to: "pages#contact", as: "contact"
  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  post "/emailconfirmation", to: "pages#email", as: "email_confirmation"
  resources "customers"
  resources "factory_contacts"
  resources "manufacturers"
end
