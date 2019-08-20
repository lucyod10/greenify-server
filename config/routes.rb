Rails.application.routes.draw do

  scope '/api' do
    post 'user_token' => 'user_token#create'
    resources :users
  end

  resources :plants
  resources :availabilities
  get '/plants/:id/availabilities' => 'plants#availabilities'
  get '/plants/:id/bookings' => 'plants#bookings'
  post '/plants/:id/bookings' => 'plants#book'
  resources :bookings
end
