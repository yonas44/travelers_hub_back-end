Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :packages, only: [:index, :show, :create, :destroy]
  delete '/package', to: 'packages#destroy'
  
  get '/bookings', to: 'bookings#index'
  post '/booking', to: 'bookings#create'
  delete '/booking', to: 'bookings#destroy'
  
  root "test#index"
end
