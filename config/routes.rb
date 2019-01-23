Rails.application.routes.draw do
  get '/gaiagps', to: 'static_pages#gaia'
	
  resources :flights
  # root 'flights'
  resources :bookings do 
  	resources :passengers
  end
end
