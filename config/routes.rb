Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :packages, only: [:index, :show]
  # Defines the root path route ("/")
  # root "articles#index"
  root "test#index"
end
