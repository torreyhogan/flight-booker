Rails.application.routes.draw do
  resources :flights
  # root 'flights'
  resources :bookings do 
  	resources :passengers
  end
end
