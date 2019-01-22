Rails.application.routes.draw do
	root "flights#index"
  resources :flights
  # root 'flights'
  resources :bookings do 
  	resources :passengers
  end
end
