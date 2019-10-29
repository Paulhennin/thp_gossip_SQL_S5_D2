Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :gossip
  get 'team', to: "gossip#team"
  get 'contact', to: "gossip#contact"

  get 'gossip/welcome/:first_name', to: "gossip#welcome"


  resources :user
end
