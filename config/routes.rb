Rails.application.routes.draw do
  get "about", to: "about#index"

  # ##################################
  # AUTH
  # ##################################
  # Register user
  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"
  # Login In User 
  get "sign_in", to: "session#new"
  post "sign_in", to: "session#create"
  # Logout User
  delete "logout", to: "session#destroy"




  root to: "main#index"
end
