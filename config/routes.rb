Rails.application.routes.draw do
  # resources :nail_services
  # resources :appointments
  # resources :nail_technicians
  # resources :clients
  # resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "signup", to: "users#new", as: "signup"
  # get "login", to: "sessions#new", as: "login"
  # post "sessions", to: "sessions#create", as: "sessions"
 

  get "/stores", to: "stores#index", as: "stores"
  get "/stores/:id", to: "stores#show", as: "store"
  

  get "/nail_services", to: "nail_services#idex", as: "nail_services"
  get "/nail_services/:id", to: "nail_services#show", as: "nail_service" 

  get "/nail_technicians", to: "nail_technicians#index", as: "nail_technicians"
  get "/nail_technicians/:id", to: "nail_technicians#show", as: "nail_technician"

  get "/clients", to: "clients#index", as: "clients"
  get "/clients/:id", to: "clients#show", as: "client"

  get "/appointments", to: "appointments#index", as: "appointments"
  get "/appointments/new", to: "appointments#new", as: "new_appointment"
  post "/appointments", to: "appointments#create"
  get "/appointments/:id", to: "appointment#show", as: "appointment"
  get "/appointments/:id/edit", to: "appointments#edit", as: "edit_appointment"
  patch "/appointment/id", to: "appointment#update"
  delete "/appointment/id", to: "appointment#destroy"
end