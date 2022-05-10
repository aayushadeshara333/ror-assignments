Rails.application.routes.draw do
  root "sectors#index"
  resources :sectors
  resources :industries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
