Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :packages, only: [:index, :show, :create, :destroy]
  get '/bookings', to: 'bookings#index'
  delete '/booking', to: 'bookings#destroy'

  # Add a path for add package
  post '/add_package', to: 'packages#create'
  delete '/packages', to: 'packages#destroy'

  root "test#index"
end
