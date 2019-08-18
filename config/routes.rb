Rails.application.routes.draw do
  resources :users
  resources :plants
  resources :availabilities
  resources :bookings
end
