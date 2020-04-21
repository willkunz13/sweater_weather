Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	namespace :api do
		namespace :v1 do
			get '/forecast', to: 'weather#show'
			
			post '/users', to: 'users#create'

			get '/sessions', to: 'sessions#create'

			post '/road_trip', to: 'road_trip#create'
		end
	end
end
