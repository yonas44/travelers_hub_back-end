Rails.application.routes.draw do
  get '/bookings', to: 'bookings#index'
  delete '/booking', to: 'bookings#destroy'
end
