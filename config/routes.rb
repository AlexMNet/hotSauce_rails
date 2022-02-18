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

  # Forgot/Reset password 
  get "forgot_password", to: "password#new"
  post "forgot_password", to: "password#create"

  # Reset password routes
  get "password_reset", to: "password#edit"
  patch "password_reset", to: "password#update"

  resources :sauces

  root to: "main#index"

  # Unhandled Routes
  get '*path', to: "application#routing_error"
end
