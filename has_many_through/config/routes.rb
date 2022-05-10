Rails.application.routes.draw do
  root "patients#index"
  resources :patients
  resources :appointments
  resources :physicians
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
