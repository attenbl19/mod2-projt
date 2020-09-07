Rails.application.routes.draw do
  resources :nail_services
  resources :appointments
  resources :nail_technicians
  resources :clients
  resources :stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
