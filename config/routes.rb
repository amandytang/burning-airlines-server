Rails.application.routes.draw do
  resources :planes
  resources :users

  resources :flights
  resources :flights do
    put :flight_user, on: :member
  end

  # get '/reservations' => '/flights/1/flight_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
