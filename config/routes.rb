Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/bookings', to: 'bookings#index'
  delete '/booking', to: 'bookings#destroy'
  root "test#index"
end
